Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DFFA2FB7DC
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 15:28:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389695AbhASLbz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 06:31:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387798AbhASKNF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 05:13:05 -0500
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com [IPv6:2607:f8b0:4864:20::74a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76044C061573
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 02:12:24 -0800 (PST)
Received: by mail-qk1-x74a.google.com with SMTP id w204so19708313qka.18
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 02:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=BcPoYEbdIYyM8L8hAhQ7ZZD170CnJQ01Heu1vKTFsss=;
        b=D9fyG4LJqOzR0b1Nb7kKUNMQjqR37zsPPSq6cWgywvRFNX+bsd5Hw9DpESDF1e6QZy
         copoF54mllDVMx7zq7x8SSCSRrDticTfSiZUazhWQUUpn8+cCCGefIH4jz/ZCwuAwe4x
         RCtuo/yVBqwnFBojFsNIC8cCoNLq7Vs34nfiNUpaBaaHKZGkpkG1HdirEla6Glgox1OW
         gVZk+rxOA/ibk/V8aS1JEsfXjhupQhS8pjk0kxw2E3nJppUmXmleexR19+cM1LU/RzlC
         nHx+842pBCrGXanuDNznserDO6Vq4sDDorTu6ccLwVa9zERO3AADhtU7MPVMSYbZLJkB
         Upyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=BcPoYEbdIYyM8L8hAhQ7ZZD170CnJQ01Heu1vKTFsss=;
        b=bJSEthAU3TaVTF5OFlHl1AzZeg8PIJ5c9da39dVT1cWV+U16sftAPCOVPSiED6mAB6
         7eZWjxbUih91yskHJciMOKsfaRySuN+KlWw4B27RzWcxv7I1PxAVMOR9i+kE/iy2Us1j
         1is3QeYEQ/i1hlG4bWF0x+jfR+9wHvBV7MAxt+NRA0HMMJ066I/00EzdG4424EfUuYJv
         PVdZ1Hal9VsqtFrT4z+pRkbg6I+LJ4awRa+NYb/v+Y3lvA349/thhJY6/4cDnT9Dui7p
         pbnGK3HMis0ACzyXHAt3TrdbcURVf4Jn4C7dbAYK6Echg1iyWnWZGAcaQjMFs3z4GkaP
         6nZA==
X-Gm-Message-State: AOAM5325j3EXtZ55mKb3Nqje6z51gQT0D3ROVIOEafcDQcqQ0Mg3Cb48
        PZ/2fEAfSeofMnbkfH0Vz3TKLTJC2mEF6MY=
X-Google-Smtp-Source: ABdhPJxPc60+P7BA14J36TtxyZFPsqKyXLgHrTt6kDEo/6Jh2iH64s5ke2Ms8gj3mhQnsczWl55KUlM4WUQAsKo=
Sender: "howardyen via sendgmr" <howardyen@howardyen.ntc.corp.google.com>
X-Received: from howardyen.ntc.corp.google.com ([2401:fa00:fc:202:5d06:ba6f:6a89:a201])
 (user=howardyen job=sendgmr) by 2002:a0c:d403:: with SMTP id
 t3mr3780313qvh.4.1611051143686; Tue, 19 Jan 2021 02:12:23 -0800 (PST)
Date:   Tue, 19 Jan 2021 18:10:42 +0800
In-Reply-To: <20210119101044.1637023-1-howardyen@google.com>
Message-Id: <20210119101044.1637023-3-howardyen@google.com>
Mime-Version: 1.0
References: <20210119101044.1637023-1-howardyen@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 2/4] usb: host: export symbols for xhci hooks usage
From:   Howard Yen <howardyen@google.com>
To:     gregkh@linuxfoundation.org, robh+dt@kernel.org,
        mathias.nyman@intel.com
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Howard Yen <howardyen@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Export symbols for xhci hooks usage:
    xhci_ring_free
        - Allow xhci hook to free xhci_ring.
    xhci_get_slot_ctx
        - Allow xhci hook to get slot_ctx from the xhci_container_ctx
	  for getting the slot_ctx information to know which slot is
	  offloading and compare the context in remote subsystem memory
	  if needed.
    xhci_get_ep_ctx
        - Allow xhci hook to get ep_ctx from the xhci_container_ctx for
	  getting the ep_ctx information to know which ep is offloading and
	  comparing the context in remote subsystem memory if needed.
    xhci_handle_event
        - Allow xhci hook to handle the xhci events from the USB
	  controller.
    xhci_update_erst_dequeue
        - If xhci events was handle by xhci hook, it needs to update
	  the erst dequeue pointer to let the USB controller know the
	  events was handled.

Signed-off-by: Howard Yen <howardyen@google.com>
---
 drivers/usb/host/xhci-mem.c  | 3 +++
 drivers/usb/host/xhci-ring.c | 6 ++++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index f3dbc5956290..69f19774b914 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -289,6 +289,7 @@ void xhci_ring_free(struct xhci_hcd *xhci, struct xhci_ring *ring)
 
 	kfree(ring);
 }
+EXPORT_SYMBOL_GPL(xhci_ring_free);
 
 static void xhci_initialize_ring_info(struct xhci_ring *ring,
 					unsigned int cycle_state)
@@ -545,6 +546,7 @@ struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_hcd *xhci,
 	return (struct xhci_slot_ctx *)
 		(ctx->bytes + CTX_SIZE(xhci->hcc_params));
 }
+EXPORT_SYMBOL_GPL(xhci_get_slot_ctx);
 
 struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci,
 				    struct xhci_container_ctx *ctx,
@@ -558,6 +560,7 @@ struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci,
 	return (struct xhci_ep_ctx *)
 		(ctx->bytes + (ep_index * CTX_SIZE(xhci->hcc_params)));
 }
+EXPORT_SYMBOL_GPL(xhci_get_ep_ctx);
 
 
 /***************** Streams structures manipulation *************************/
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index bfd653a1e5f6..f3b387e2fcb3 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -2717,7 +2717,7 @@ static int handle_tx_event(struct xhci_hcd *xhci,
  * Returns >0 for "possibly more events to process" (caller should call again),
  * otherwise 0 if done.  In future, <0 returns should indicate error code.
  */
-static int xhci_handle_event(struct xhci_hcd *xhci)
+int xhci_handle_event(struct xhci_hcd *xhci)
 {
 	union xhci_trb *event;
 	int update_ptrs = 1;
@@ -2786,13 +2786,14 @@ static int xhci_handle_event(struct xhci_hcd *xhci)
 	 */
 	return 1;
 }
+EXPORT_SYMBOL_GPL(xhci_handle_event);
 
 /*
  * Update Event Ring Dequeue Pointer:
  * - When all events have finished
  * - To avoid "Event Ring Full Error" condition
  */
-static void xhci_update_erst_dequeue(struct xhci_hcd *xhci,
+void xhci_update_erst_dequeue(struct xhci_hcd *xhci,
 		union xhci_trb *event_ring_deq)
 {
 	u64 temp_64;
@@ -2822,6 +2823,7 @@ static void xhci_update_erst_dequeue(struct xhci_hcd *xhci,
 	temp_64 |= ERST_EHB;
 	xhci_write_64(xhci, temp_64, &xhci->ir_set->erst_dequeue);
 }
+EXPORT_SYMBOL_GPL(xhci_update_erst_dequeue);
 
 static irqreturn_t xhci_vendor_queue_irq_work(struct xhci_hcd *xhci)
 {
-- 
2.30.0.284.gd98b1dd5eaa7-goog

