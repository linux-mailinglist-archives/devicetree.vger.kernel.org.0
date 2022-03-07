Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F190E4D053B
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 18:29:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241032AbiCGRaG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 12:30:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232999AbiCGRaF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 12:30:05 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3908E4A3D1
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 09:29:11 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BD0813F222
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 17:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646674149;
        bh=m2Jeq/q++zJQA18Xn6QgrfwH4qNWsS/mZookF9A9G8I=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=Ng9Oh+RVzaYbZauG58CXvDECM9c/oGCGay1CeMrnknUWrUHU1L8J7QxZE5AwOwLlV
         3wU66CHK5NKwh1NS/e0QIKu+vkjtOrX4MmivpEpUZ0VTGQzcpyS4TyfLyKx1FcJ1KZ
         Ps7Yr3j7jCrcagy4FmxjpRVXIu3Zk4UTcJdhxqq3GEpDl0ReYle1tAPU/o0f2IEqis
         SLd+S9PS+KLSF+0QNJ9WNxIsLM5rMesnnEiYv6I+niD4fyOU0uiI5BgO8meZJsdc9L
         oc4KEjXgEHaBnWZWHiieAaj0zFp2VTW+35E70A23rY3XeDAT6cS01kc6pJ0gmiu5XT
         APesVYtqHRlwQ==
Received: by mail-ed1-f69.google.com with SMTP id u28-20020a50d51c000000b004159ffb8f24so9054345edi.4
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 09:29:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m2Jeq/q++zJQA18Xn6QgrfwH4qNWsS/mZookF9A9G8I=;
        b=wkF1NDfMZ51j9DRviy4w8RIYNYPWT2BSJJ05SHE9uqayecWVKMGbP9eMQUFdMzQ8Q7
         C7A3Bjg9220pPe5X80ed5uCN6OqydD83GuWTxB9fKGxlc5ulNns1q1/uKctNxWI3L67F
         4MHMSm+ERHDIRI+ymOWgcZ+jy45FFbXNTvr6zI3dOVPpzYzHPXvpcPoaho9YzMyl8z2J
         hs1yziUWYfkgL099C7p1OG47ZaTnW+97E1k+8Kja71swjOiYMMOKTFj2419Cc/H/8gFy
         Blgiz1u/ES3l6mCp/Qq1QxruBW+nUvhjwkDXlSEr5tUEwJem8289FY6aZygUUdxsivBw
         IyvA==
X-Gm-Message-State: AOAM530KhugcDcSbyc/2bzTjH8W2EAZMEJoPKzXfbWnF4UNQ3kxIqUr8
        VkN5omaUUl8tp+3Rb9H0Pakj0APVzK9frO/lEIxv1upx79C/ldqjB42hkLo/SeXD9NoYuIq0Ebr
        2j2lAn8pc2EknvfNrxHE+NpfiQBqcw+SJ3ifxms0=
X-Received: by 2002:a50:d711:0:b0:410:a51a:77c5 with SMTP id t17-20020a50d711000000b00410a51a77c5mr12196201edi.154.1646674149438;
        Mon, 07 Mar 2022 09:29:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwPpZPNmmvyt3X8BGnd2kVeT7GVyxpB+/R5Nk1+D2hHUifJQ4ByfJ5kycdrfu6I4A2L3hAzVA==
X-Received: by 2002:a50:d711:0:b0:410:a51a:77c5 with SMTP id t17-20020a50d711000000b00410a51a77c5mr12196177edi.154.1646674149239;
        Mon, 07 Mar 2022 09:29:09 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id cc20-20020a0564021b9400b00412f2502469sm6596636edb.23.2022.03.07.09.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 09:29:08 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] MAINTAINERS: dt-bindings: update Krzysztof Kozlowski's email
Date:   Mon,  7 Mar 2022 18:29:01 +0100
Message-Id: <20220307172901.156929-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use Krzysztof Kozlowski's @kernel.org account in dt-bindings maintainer
entry.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Hi Rob,

Could you take this one directly (optionally squash with the patch
adding me as maintainer)?

My email address also appears in the bindings. For now mailmap will
handle it (see my other commit). I will change it after merge window,
because some of the bindings are in separate for-next branches.
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4e88b4e17e35..48b0cf606be0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14604,7 +14604,7 @@ F:	scripts/dtc/
 
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 M:	Rob Herring <robh+dt@kernel.org>
-M:	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+M:	Krzysztof Kozlowski <krzk+dt@kernel.org>
 L:	devicetree@vger.kernel.org
 S:	Maintained
 C:	irc://irc.libera.chat/devicetree
-- 
2.32.0

