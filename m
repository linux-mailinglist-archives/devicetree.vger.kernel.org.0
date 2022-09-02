Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6ED0E5AB893
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 20:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230123AbiIBSwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 14:52:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbiIBSwk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 14:52:40 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16B8CDD75A
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 11:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662144758;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=uWCWlSmZFYEaKyKiurVFOsZ2PihsSoTnqTvGm6hbF8A=;
        b=jI9ftbiB87gs1t9Gr5THkpSnyxEhyQ38AYZRYhoQ8fo+Eh6qDBL9AIC6rD03k6mrPQiNw2
        guiALd0DhMJw59xN3ZjgA2AMONW99n2TnZi/wNfD7gHJ4HjLuTBjEO49k7i1N2FSyACsB5
        OF8z/mg7I/swCAzgdL2qk+4xTDN+aok=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-84-MbhtHuHtNc6z1oLGAVtBPA-1; Fri, 02 Sep 2022 14:52:37 -0400
X-MC-Unique: MbhtHuHtNc6z1oLGAVtBPA-1
Received: by mail-qt1-f199.google.com with SMTP id s2-20020ac85cc2000000b00342f8ad1f40so2166249qta.12
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 11:52:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uWCWlSmZFYEaKyKiurVFOsZ2PihsSoTnqTvGm6hbF8A=;
        b=irFCqsbSVXcgHrkrxFudXZJ2CzE8l28HN2cnWfuf1ZjjBhg6GZmPVdEkeB3M/qRCtw
         1tEjFR07C/p/mxyzSgtpD0tEU+mpJ/snojSmEvuTgVGfZ9PCKc+Z4qtJHoDjKneRC3YK
         mgPeyjX0isTl2tpn9MlESEErb9LSx1crc5epKMENMave4VbHHJy6DtYF8j5PVrZI57d+
         EI7u2Up01SBK9ccgWZFJPK03Kf55yMKw7+S484ctMGMWlRqOncBuBVQm1WHpkgRx+02j
         jxgQTc/a1spUslgPvAH503zmCQu9dj33SCRkZQQBxTcua5tcN6Tp7uRam6hVe2PHYsSe
         b0GQ==
X-Gm-Message-State: ACgBeo2LwsR0Q0GjkHRFGa/oq8gbpH+xBV/HrdCiQwzrYTM0pAlX6wjH
        2azwLBQ60dx+xqep10Jf9SaPUGdwjRb6X+72z3E1stu14Kc4vmw6JJ2Xdz+rI2fCIoWrgZm0vrI
        /KQpRTUJ+QJbFpGpquK5EAg==
X-Received: by 2002:a05:6214:5299:b0:47e:89e9:e27b with SMTP id kj25-20020a056214529900b0047e89e9e27bmr30305777qvb.52.1662144756902;
        Fri, 02 Sep 2022 11:52:36 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6sQ1Y+//dmjxKBj3ZEaXYuHYln+NL61ZdmgRorPSxsIvkkcjpHQ8qd63mv5wb+6ajlx/wzPA==
X-Received: by 2002:a05:6214:5299:b0:47e:89e9:e27b with SMTP id kj25-20020a056214529900b0047e89e9e27bmr30305759qvb.52.1662144756618;
        Fri, 02 Sep 2022 11:52:36 -0700 (PDT)
Received: from halaneylaptop.redhat.com ([2600:1700:1ff0:d0e0::48])
        by smtp.gmail.com with ESMTPSA id j4-20020ac874c4000000b0031ef0081d77sm1403168qtr.79.2022.09.02.11.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 11:52:36 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        johan@kernel.org, Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH 3/3] regulator: dt-bindings: qcom,rpmh: Indicate regulator-allow-set-load dependencies
Date:   Fri,  2 Sep 2022 13:51:48 -0500
Message-Id: <20220902185148.635292-4-ahalaney@redhat.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220902185148.635292-1-ahalaney@redhat.com>
References: <20220902185148.635292-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For RPMH regulators it doesn't make sense to indicate
regulator-allow-set-load without saying what modes you can switch to,
so be sure to indicate a dependency on regulator-allowed-modes.

With this in place devicetree validation can catch issues like this:

    /mnt/extrassd/git/linux-next/arch/arm64/boot/dts/qcom/sm8350-hdk.dtb: pm8350-rpmh-regulators: ldo5: 'regulator-allowed-modes' is a dependency of 'regulator-allow-set-load'
            From schema: /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml

Suggested-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 86265b513de3..1cfd9cfd9ba6 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -99,12 +99,16 @@ properties:
     type: object
     $ref: "regulator.yaml#"
     description: BOB regulator node.
+    dependencies:
+      regulator-allow-set-load: ["regulator-allowed-modes"]
 
 patternProperties:
   "^(smps|ldo|lvs)[0-9]+$":
     type: object
     $ref: "regulator.yaml#"
     description: smps/ldo regulator nodes(s).
+    dependencies:
+      regulator-allow-set-load: ["regulator-allowed-modes"]
 
   ".*-supply$":
     description: Input supply phandle(s) for this node
-- 
2.37.2

