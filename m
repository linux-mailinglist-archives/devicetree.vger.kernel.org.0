Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F5611035BF
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2019 09:02:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727158AbfKTICg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Nov 2019 03:02:36 -0500
Received: from mail-vk1-f201.google.com ([209.85.221.201]:45671 "EHLO
        mail-vk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726358AbfKTICg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Nov 2019 03:02:36 -0500
Received: by mail-vk1-f201.google.com with SMTP id c5so10979800vkm.12
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2019 00:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=v9SVguB34yFXQYQCtso1z5KQbnvYcbDvSh9zyizusBA=;
        b=EVoDF4XQ6IM4O3VY1rlvZJ9NaU03JESeIBp1JhoEPnNAstop8a2Sg/TABnt1lUWUKv
         uCaXxaaNnMslFUMqNcw4F1ViF8Fr6Dlj63FwShTfOAf9q8fM4xalLDtanLJNwhTgZBbO
         1nL9suTv3ysFsBKwfJdN0GKAm5LyCiTy1fMhGxmAzU8AEewgUKunXZC/iRbKunERmXs/
         Q60MA0VhhHWJjHScu2r2frQ6siyZH+xaOBPBZJxHnH/RbZxcqB9QLNjVSE0yHRn1hG2h
         3ooScZRGKGEY0X7LjfAEoTkaqgeL1Ibl4CQihrBZwwVFc88hW0oGmJ+WYy9VPSV7cRhT
         ZLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=v9SVguB34yFXQYQCtso1z5KQbnvYcbDvSh9zyizusBA=;
        b=S0CD0djwW7ZQpKsAXatk6xflfD069zueM5uVmJK2CgPFPQ8e2FWGcfhR+uz9DVciC6
         KNtwu+N7RuPCrXpPoEKPDW6HUYziQvZFv8evO2n1I44ThbVFj1K8be2WBAGVWtQZmZJp
         FAODw+/R+dRCtHeOOA/KVej3B3oBqQ3g2T08Xcxf6nmsMBTQBEkboD/fCCVcTdvwujlh
         uvzCs3990RiBCol7fzoqkYj21WfuXIZrbeeYLLcxToYh381IYhNSPLfS2gfpSexvAa/z
         N2wfnVKv6TfNs0O19v55PCA5CSPHxWmD0h8rw1Qaad0afNoKtyo6ONPYrdQD9a/pejzA
         WZ2w==
X-Gm-Message-State: APjAAAUMvXbaV6Wf2NdhYRER3PxC+56A2IdIpaOUl+iFEb2PtqI/CJOG
        m0IgGNkE3FTrMZ47B3t+bsIk8Ht4mJbP7CM=
X-Google-Smtp-Source: APXvYqyfpv66UxK7JIjpQqQY+CUFYdhkL+YN9jQN8pNakCS0UrbJZPCsgJyVRHGDqPcEszUbvOAbQRddqE0K8kM=
X-Received: by 2002:ab0:765a:: with SMTP id s26mr805288uaq.17.1574236955402;
 Wed, 20 Nov 2019 00:02:35 -0800 (PST)
Date:   Wed, 20 Nov 2019 00:02:29 -0800
Message-Id: <20191120080230.16007-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH] of: property: Fix the semantics of of_is_ancestor_of()
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        kernel-team@android.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The of_is_ancestor_of() function was renamed from of_link_is_valid()
based on review feedback. The rename meant the semantics of the function
had to be inverted, but this was missed in the earlier patch.

So, fix the semantics of of_is_ancestor_of() and invert the conditional
expressions where it is used.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index dedbf82da838..0de1e7e69b6e 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -993,11 +993,11 @@ static bool of_is_ancestor_of(struct device_node *test_ancestor,
 	while (child) {
 		if (child == test_ancestor) {
 			of_node_put(child);
-			return false;
+			return true;
 		}
 		child = of_get_next_parent(child);
 	}
-	return true;
+	return false;
 }
 
 /**
@@ -1043,7 +1043,7 @@ static int of_link_to_phandle(struct device *dev, struct device_node *sup_np,
 	 * descendant nodes. By definition, a child node can't be a functional
 	 * dependency for the parent node.
 	 */
-	if (!of_is_ancestor_of(dev->of_node, sup_np)) {
+	if (of_is_ancestor_of(dev->of_node, sup_np)) {
 		dev_dbg(dev, "Not linking to %pOFP - is descendant\n", sup_np);
 		of_node_put(sup_np);
 		return -EINVAL;
-- 
2.24.0.432.g9d3f5f5b63-goog

