Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3F8D49C741
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 11:15:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239762AbiAZKPD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 05:15:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239737AbiAZKO7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 05:14:59 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2345AC061751
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 02:14:57 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id z14so19159001ljc.13
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 02:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=yYyA7Dvhv5JH05dt+/m//IIi7iqHJvsuMpECJGKlvh4=;
        b=ilxqhKe48DT0NtXyXNY+cwIN9bMKeCydVgQ28UFvs4WAPnILVev774zeZ453kQKnQr
         U6qarLtWu3Hp311kAdhqG000rePikNFW3iXtbXPS3culI+90BrtYfSZbkn+zw6dA1Ik6
         FKRm5ntMIhmw2JZ1qnHJGh+KpQfTNPQ7B3QS+CLf6/uH4asCKMntcZIgDnObRYySOqaN
         pcnTTgqTkvTOiRYORuB7fBsbqBEa8sxC2CrIbbw26lZqNzxEyPN8FqlfW0epXJPoHLzH
         zBIt0MG8FuCM4t0WrMj8hgeDcbDVQZLDe7RqBx2TUfocu0usIgfUuTXcxZbG4BALBI1n
         dAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=yYyA7Dvhv5JH05dt+/m//IIi7iqHJvsuMpECJGKlvh4=;
        b=tMB9F3dfFU1K/MNZhGZLVRNquhjHBSxELyf+H1tGzsDk5D4sbRBvIssbELc8Pxb76I
         bzzMV7ozuk4asx2MBSZLBAFkAguYQsbkH6fbkwPgvojSseGibQpiltWzbD5JpECTnJUo
         3eH/MTKfgG6hUXlWBY/cMsxFRytaHhLq6MtcXQ/x0y0x/Bt3GVG4xq8tj0qgecx83E7R
         8UKIhyAGHhb9ZgwRqlXzF1OD+/VFiulJgGx3svTox4uGsOzq/kHfFVib6WgrhOHH3Vn3
         r2hLJ3rywfq741Y9yuglMrSeW71Cor0LwZPyjQpkbOqCRwheP1fkTXezLpgmBRjekEXR
         yxLA==
X-Gm-Message-State: AOAM530uzpkHobNyMMWFu7JY2xnMnkMW7mNkWattJtnodjtq880si5h4
        fQEcHu4A8PX2W0uI9o79P0QQXA==
X-Google-Smtp-Source: ABdhPJzgbNmJSZlbIDHCg+cktCi1VJ/8rcgjfp4OaMvn8WwhJ5KejctOC6lXhpjNgE3oISrMv4IIjg==
X-Received: by 2002:a2e:9609:: with SMTP id v9mr17890283ljh.306.1643192095350;
        Wed, 26 Jan 2022 02:14:55 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id h13sm1351906lfv.100.2022.01.26.02.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 02:14:54 -0800 (PST)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     netdev@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH net-next 5/5] dt-bindings: net: xgmac_mdio: Add "clock-frequency" and "suppress-preamble"
Date:   Wed, 26 Jan 2022 11:14:32 +0100
Message-Id: <20220126101432.822818-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220126101432.822818-1-tobias@waldekranz.com>
References: <20220126101432.822818-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver now supports the standard "clock-frequency" and
"suppress-preamble" properties, do document them in the binding
description.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 .../devicetree/bindings/net/fsl-fman.txt      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/fsl-fman.txt b/Documentation/devicetree/bindings/net/fsl-fman.txt
index cd5288fb4318..801efc7d6818 100644
--- a/Documentation/devicetree/bindings/net/fsl-fman.txt
+++ b/Documentation/devicetree/bindings/net/fsl-fman.txt
@@ -388,6 +388,25 @@ PROPERTIES
 		Value type: <prop-encoded-array>
 		Definition: A standard property.
 
+- clocks
+		Usage: optional
+		Value type: <phandle>
+		Definition: A reference to the input clock of the controller
+		from which the MDC frequency is derived.
+
+- clock-frequency
+		Usage: optional
+		Value type: <u32>
+		Definition: Specifies the external MDC frequency, in Hertz, to
+		be used. Requires that the input clock is specified in the
+		"clocks" property. See also: mdio.yaml.
+
+- suppress-preamble
+		Usage: optional
+		Value type: <boolean>
+		Definition: Disable generation of preamble bits. See also:
+		mdio.yaml.
+
 - interrupts
 		Usage: required for external MDIO
 		Value type: <prop-encoded-array>
-- 
2.25.1

