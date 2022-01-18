Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12D93493035
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 22:51:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349692AbiARVvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 16:51:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349656AbiARVvM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 16:51:12 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1617AC06173E
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 13:51:11 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id e3so854146lfc.9
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 13:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=a9S0CLeHZ4ew4bWk4chYd42UWn+5cFA6bwUpUuawUus=;
        b=aBRiSVIU3yEaOaFkGFSoBvmENqnUL2QKwtck0x/uN4RvKh2U7UNHTkhgljqjdXrXQR
         Xhd4JHegSv+VNhmat5jWWKfdxjz8vu0UOoIEXyzE8/e2qRBqi1MZCnmimb4kVtM/SnYf
         zN1ZLCa5Y3r1nXz7PO639g85Tj+fbGTqc9f5qIlLjO3XYwC513vesZ5hAhkSwZ2VRu5O
         xEvuhv+Apj98zxy5zboGO8zbW/6o3u83Wa3KLjrWkoW9KW+dkZtbUFz7Kj0Pqnig2Bx0
         dY9oJoHtqjVy4RKn1KvU1C37/I5Wq9pbjGjCFbTvTDTIu/OvK4nZWhjqoSzGDdFF/LTn
         JKZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=a9S0CLeHZ4ew4bWk4chYd42UWn+5cFA6bwUpUuawUus=;
        b=rC6ZbpHfLnGoZr149UQMgvWoeiEGQwLW/8yOYtDTsZcGv6Pwa3iJDHYhvQ5s8NYEu0
         3rduau1h5XOsUHjVCEl02ZjOa/OzTAyBMmOzcLq4lASbKLCVmHrX8kSVUUk1pbtf9hvY
         yP9BiMUHib/MTZ2oS5BF4cPN5xegAXVAZn4LDSIdaKf+yp5xhmDqI3WgLF0veBhRkav9
         LRQ9ZiIbFSp9o00dhUrL+ftRVZ+p30x0YpCdL5HrUue4XoIKC65YyrP1qe2t5kuFC0h5
         5kkGCXQgkWUYZgGL3cVMVfE270fAK37dkmTYAbb6Euxb8MjdS3v/+wlZX9ZSan7SZnMc
         IgTQ==
X-Gm-Message-State: AOAM533mLx6W7uBQK1yfKhJ3qvmNBKKKY7QUwuT6PO7/nAU4IN3moasy
        EkTCHocR0wH5et5uwJn5KxAyTR0yBM43fQ==
X-Google-Smtp-Source: ABdhPJyk4QiT1nBRu2dGik/I04/l1JsCAZrcV6ZDy+E76mPjKchP2tTv5AGOhYzQE2pfCTNTn6lr+Q==
X-Received: by 2002:a19:760d:: with SMTP id c13mr23340474lff.289.1642542669413;
        Tue, 18 Jan 2022 13:51:09 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id w5sm1704808ljm.55.2022.01.18.13.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jan 2022 13:51:09 -0800 (PST)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     netdev@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 net 2/4] dt-bindings: net: Document fsl,erratum-a009885
Date:   Tue, 18 Jan 2022 22:50:51 +0100
Message-Id: <20220118215054.2629314-3-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220118215054.2629314-1-tobias@waldekranz.com>
References: <20220118215054.2629314-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update FMan binding documentation with the newly added workaround for
erratum A-009885.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 Documentation/devicetree/bindings/net/fsl-fman.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/fsl-fman.txt b/Documentation/devicetree/bindings/net/fsl-fman.txt
index c00fb0d22c7b..020337f3c05f 100644
--- a/Documentation/devicetree/bindings/net/fsl-fman.txt
+++ b/Documentation/devicetree/bindings/net/fsl-fman.txt
@@ -410,6 +410,15 @@ PROPERTIES
 		The settings and programming routines for internal/external
 		MDIO are different. Must be included for internal MDIO.
 
+- fsl,erratum-a009885
+		Usage: optional
+		Value type: <boolean>
+		Definition: Indicates the presence of the A009885
+		erratum describing that the contents of MDIO_DATA may
+		become corrupt unless it is read within 16 MDC cycles
+		of MDIO_CFG[BSY] being cleared, when performing an
+		MDIO read operation.
+
 - fsl,erratum-a011043
 		Usage: optional
 		Value type: <boolean>
-- 
2.25.1

