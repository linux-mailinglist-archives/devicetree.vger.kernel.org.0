Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAAE32BC2DE
	for <lists+devicetree@lfdr.de>; Sun, 22 Nov 2020 01:39:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726398AbgKVAjE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Nov 2020 19:39:04 -0500
Received: from relay1.mymailcheap.com ([144.217.248.100]:59129 "EHLO
        relay1.mymailcheap.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726335AbgKVAjD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Nov 2020 19:39:03 -0500
Received: from filter2.mymailcheap.com (filter2.mymailcheap.com [91.134.140.82])
        by relay1.mymailcheap.com (Postfix) with ESMTPS id 9B0AE3F1C5;
        Sun, 22 Nov 2020 00:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
        by filter2.mymailcheap.com (Postfix) with ESMTP id DD6C42A916;
        Sun, 22 Nov 2020 01:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
        s=default; t=1606005540;
        bh=DfWK2C5KYPvt3GZYIzm2E2gYz9EqFhE5MfZeNz29YQI=;
        h=From:To:Cc:Subject:Date:From;
        b=X+iYSLAVY6guyA+rQIfbeuO0Hz3FiLIUFuo0q330qhRwzBdn5wYz5FEmSp58FibFm
         3pE+Nz0n1X8iE7ot2AKV4TsQ4JtOqPfc2yB38sTkvC6sPaDKLSw5wNlEHf+XPI2EI1
         aAEJ6vNPt3yB5Wts9P3UHDgX6z4RHVhpHS1XerAs=
X-Virus-Scanned: Debian amavisd-new at filter2.mymailcheap.com
Received: from filter2.mymailcheap.com ([127.0.0.1])
        by localhost (filter2.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id vQeFufjuU0xf; Sun, 22 Nov 2020 01:38:59 +0100 (CET)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by filter2.mymailcheap.com (Postfix) with ESMTPS;
        Sun, 22 Nov 2020 01:38:59 +0100 (CET)
Received: from [213.133.102.83] (ml.mymailcheap.com [213.133.102.83])
        by mail20.mymailcheap.com (Postfix) with ESMTP id 96C5941022;
        Sun, 22 Nov 2020 00:38:58 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com;
        dkim=pass (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="nRcQojCn";
        dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from ice-e5v2.lan (unknown [59.41.161.246])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail20.mymailcheap.com (Postfix) with ESMTPSA id D316541022;
        Sun, 22 Nov 2020 00:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
        t=1606005533; bh=DfWK2C5KYPvt3GZYIzm2E2gYz9EqFhE5MfZeNz29YQI=;
        h=From:To:Cc:Subject:Date:From;
        b=nRcQojCnXBKrTH1C/Vlkl7jI33wy9KyPNNA2uVeupqQcBMrQtmW3vKB45IEM/FXTL
         XhekWEfqsP7FwUF/rK4QpdsV3Flbmn5DqVqWbn0skZBwElOFhLMzzTlNPRgILcAcUr
         C5P8i0Ot8XrcN3kfEED9oHxy06DfvvDDL1LMK8gM=
From:   Icenowy Zheng <icenowy@aosc.io>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        inux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
        Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 0/3] ARM: dts: sun8i: v3s: enable EHCI/OHCI
Date:   Sun, 22 Nov 2020 08:38:38 +0800
Message-Id: <20201122003841.1957034-1-icenowy@aosc.io>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 96C5941022
X-Spamd-Result: default: False [4.90 / 20.00];
         RCVD_VIA_SMTP_AUTH(0.00)[];
         ARC_NA(0.00)[];
         R_DKIM_ALLOW(0.00)[aosc.io:s=default];
         RECEIVED_SPAMHAUS_PBL(0.00)[59.41.161.246:received];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         R_MISSING_CHARSET(2.50)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DMARC_NA(0.00)[aosc.io];
         BROKEN_CONTENT_TYPE(1.50)[];
         R_SPF_SOFTFAIL(0.00)[~all];
         ML_SERVERS(-3.10)[213.133.102.83];
         DKIM_TRACE(0.00)[aosc.io:+];
         RCPT_COUNT_SEVEN(0.00)[8];
         MID_CONTAINS_FROM(1.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         ASN(0.00)[asn:24940, ipnet:213.133.96.0/19, country:DE];
         RCVD_COUNT_TWO(0.00)[2];
         HFILTER_HELO_BAREIP(3.00)[213.133.102.83,1]
X-Rspamd-Server: mail20.mymailcheap.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Formerly I forgot to add EHCI/OHCI0 device nodes to V3s DTs.

This patchset adds them, and switches PineCube to use only OHCI/EHCI,
not MUSB.

Icenowy Zheng (3):
  ARM: dts: sun8i: v3s: add EHCI/OHCI0 device nodes
  ARM: dts: sun8i: v3s: enable EHCI/OHCI for Lichee Pi Zero
  ARM: dts: sun8i: s3: switch PineCube to use OHCI/EHCI only

 arch/arm/boot/dts/sun8i-s3-pinecube.dts       | 17 ++++++++++++-----
 arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts |  8 ++++++++
 arch/arm/boot/dts/sun8i-v3s.dtsi              | 19 +++++++++++++++++++
 3 files changed, 39 insertions(+), 5 deletions(-)

-- 
2.28.0
