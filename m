Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88E295AB890
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 20:52:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbiIBSwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 14:52:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbiIBSwi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 14:52:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B348CE2C74
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 11:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662144751;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=uLJN7/BLiss15VoCQRispsUH3s6wfzk4G5XVQwrvZI0=;
        b=DEgrurzHMf4AYc0NzQwbCJGPeZc5KAwhBxcAowHu8UvP6w/8X/1XqRyLkXfrUJ7hkrdpjm
        oRs8ImaPAFXEoh+aV8zStoq/+r1UMT0hGoTaEbThXHf2MUI5z6yQ6vzRhQyLbhXJUpIQUm
        eVZKFv+Yimbw+/KllSQdXJ1wOLtI1oA=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-442-dnJgBkL2NqCaFBpIl7UM1Q-1; Fri, 02 Sep 2022 14:52:30 -0400
X-MC-Unique: dnJgBkL2NqCaFBpIl7UM1Q-1
Received: by mail-qk1-f198.google.com with SMTP id j13-20020a05620a288d00b006be7b2a758fso2623072qkp.1
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 11:52:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uLJN7/BLiss15VoCQRispsUH3s6wfzk4G5XVQwrvZI0=;
        b=X+evJUot7HajLoRu+rWkYecIxpU0a7No3TsIdeguPv+3dcl0HmOyrsLTlutCAtMn87
         qML5ZmtDBy31Nm4gve6zz9VHbG3nTBR+5LpKzzUULEFLKWJzkdWPR1IAF+Z1OOaYCApi
         5c43D+9bYafrDV3EnobRlCNG94qXE5fRSff7aKPhI6ZDlDvfKloryCCPj53Je0ZJARJG
         S+OqSdfjsi1WJ6iPxeljUy52RCu/Gk5B6I9IYF7iIaEqCMSvEwwG2mWhY1bhgkbZXt8K
         XF3ojKoxixfKqbtkE1ayymKfVtq1uhBwssxUfSL/t3oea7KRW567qj6CYbkOYaJPyD59
         mdrA==
X-Gm-Message-State: ACgBeo0zoy+S7/chmLWC4h2gAfVVcd51RxTRv12twrqmmOaev1MOOhdT
        PWIBkFM8/hrgEvq07zAqYhPXAXbgCDrQk6IqzVbHGsZHymD14xYMy+AGeuGgip4DJWvs25bn19j
        dep7k4ZT2HVqNZqnKvu0iww==
X-Received: by 2002:a0c:9d46:0:b0:476:ff07:3fe7 with SMTP id n6-20020a0c9d46000000b00476ff073fe7mr30933295qvf.15.1662144750213;
        Fri, 02 Sep 2022 11:52:30 -0700 (PDT)
X-Google-Smtp-Source: AA6agR7aZwLqxASsgLyT6pr2oLxtShydapkDDS6erqpAYgTyjpgPuDnQlYnCVVNVGOO0dY0TwHgdKg==
X-Received: by 2002:a0c:9d46:0:b0:476:ff07:3fe7 with SMTP id n6-20020a0c9d46000000b00476ff073fe7mr30933279qvf.15.1662144749987;
        Fri, 02 Sep 2022 11:52:29 -0700 (PDT)
Received: from halaneylaptop.redhat.com ([2600:1700:1ff0:d0e0::48])
        by smtp.gmail.com with ESMTPSA id j4-20020ac874c4000000b0031ef0081d77sm1403168qtr.79.2022.09.02.11.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 11:52:29 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        johan@kernel.org, Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH 2/3] regulator: dt-bindings: qcom,rpmh: Specify supply property
Date:   Fri,  2 Sep 2022 13:51:47 -0500
Message-Id: <20220902185148.635292-3-ahalaney@redhat.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220902185148.635292-1-ahalaney@redhat.com>
References: <20220902185148.635292-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The top level RPMh nodes have a supply property, make sure to specify it
so the patternProperties later that are keyed off of the PMIC version
are properly honored. Without this, and the dt-binding containing
additionalProperties: false, you will see the following when running
make dt_binding_check:

      DTEX    Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.example.dts
      DTC     Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.example.dtb
      CHECK   Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.example.dtb
    /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.example.dtb: pm8998-rpmh-regulators: 'vdd-l7-l12-l14-l15-supply' does not match any of the regexes: '^(smps|ldo|lvs)[0-9]+$', 'pinctrl-[0-9]+'
            From schema: /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml

That supply pattern is intended to be considered correct for the
qcom,pm8998-rpmh-regulators compatible, and is no longer complained
about with the supply property described.

Unfortunately this pattern is wide enough that it no longer complains
when you bork the expected supply for a compatible. I.e. for
qcom,pm8998-rpmh-regulators, if I change the example usage in the
binding to:

        vdd-l0-l12-l14-l15-supply = <&pm8998_s5>;

I get no warning, when really it should be of the pattern:

        vdd-l7-l12-l14-l15-supply = <&pm8998_s5>;

Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index b3fd60b21610..86265b513de3 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -106,6 +106,9 @@ patternProperties:
     $ref: "regulator.yaml#"
     description: smps/ldo regulator nodes(s).
 
+  ".*-supply$":
+    description: Input supply phandle(s) for this node
+
 additionalProperties: false
 
 required:
-- 
2.37.2

