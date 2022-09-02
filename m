Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1AB65AB891
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 20:52:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbiIBSwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 14:52:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230130AbiIBSwi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 14:52:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EE00110DB3
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 11:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662144755;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=mMXlQl3McI8LljLOfD/beUo4yXAI3eoC9II432XUfis=;
        b=Y1q/QIDa8RiUa4fmi5yxNfrZA/3mri44TOG/fCdPXHsWZS601gAyQSm6sbT4LH9SXTXFTR
        fFs8qhAhpGY6dge6PnfW6BIrkLJ7BTOs7SFEtWe425NeKIkeqJd06os/X6Ts+gTSt+roZe
        KeeaU4t6AwC2yGJjka2RZbZ8lfeaC3Y=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-648-AA03WsxQMcSfJTpDNxw56A-1; Fri, 02 Sep 2022 14:52:25 -0400
X-MC-Unique: AA03WsxQMcSfJTpDNxw56A-1
Received: by mail-qt1-f197.google.com with SMTP id z10-20020a05622a124a00b003445680ff47so2163845qtx.8
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 11:52:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=mMXlQl3McI8LljLOfD/beUo4yXAI3eoC9II432XUfis=;
        b=y5fkghPkwQ6Qs8JdQgqxJPmk3s4b+l8wtUba/RkASu9nwG2wYvl/vrjla08SaE2b3v
         VksPGCnlRybhG7tACs3vphwJ7FCt7bCJMBadH6DDprytIy2yPCXKb63Bml/s8ly/WIcQ
         bwnF1QUHGdyyjcqDNg2O56a7mtTQ7L6YKpQS9Ri4NYgDsQe/RUkqMRYuKZ65KRRQ7iD4
         OSf/WxODmVlhZtM+h5T1aJnZrer/xYYwhZoPi1vdQK/fACJOZ4F0+58B8JTkHmZCLyXt
         b+XqZq+ws5/neVcyJ+1qDox5DJjzXdgqpvYUIMqpXNqrspgI9xxm2o7dFhdnNVSzWWfY
         DsmA==
X-Gm-Message-State: ACgBeo3UuP+8wgCpWwGcmgjMM15BhXlrKe0oJ9P+XJepK+us3wsEJucJ
        ZsmS6f0ejOLD9KSSGZ9aJL4DqUeDyePDMScl7TSIWlXmdUMBxyuq5PD5cBewbr322+/AVRLVWKl
        ZWVh5YgSe1EA5k51vm9qjHQ==
X-Received: by 2002:ac8:5a4a:0:b0:344:56b3:7eac with SMTP id o10-20020ac85a4a000000b0034456b37eacmr30002983qta.656.1662144745537;
        Fri, 02 Sep 2022 11:52:25 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4ogEKHDJ2+aO2zqFgKOn0rePP35V50OUqeadZCgV7OcOEFgnmwuKzmiq0+0YezCsI8iP5uqA==
X-Received: by 2002:ac8:5a4a:0:b0:344:56b3:7eac with SMTP id o10-20020ac85a4a000000b0034456b37eacmr30002963qta.656.1662144745324;
        Fri, 02 Sep 2022 11:52:25 -0700 (PDT)
Received: from halaneylaptop.redhat.com ([2600:1700:1ff0:d0e0::48])
        by smtp.gmail.com with ESMTPSA id j4-20020ac874c4000000b0031ef0081d77sm1403168qtr.79.2022.09.02.11.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 11:52:25 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        johan@kernel.org, Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH 1/3] regulator: dt-bindings: qcom,rpmh: Use additionalProperties
Date:   Fri,  2 Sep 2022 13:51:46 -0500
Message-Id: <20220902185148.635292-2-ahalaney@redhat.com>
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

Right now, running make dt_binding_check results in this snippet:

    /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml: 'additionalProperties' is a required property
            hint: A schema without a "$ref" to another schema must define all properties and use "additionalProperties"
            from schema $id: http://devicetree.org/meta-schemas/base.yaml#
      SCHEMA  Documentation/devicetree/bindings/processed-schema.json
    <snip..>
    /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml: ignoring, error in schema:

Which results in the schema not being properly evaluated. Swap out
unevaluatedProperties which doesn't seem to be doing anything for
additionalProperties.

Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 9a36bee750af..b3fd60b21610 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -106,6 +106,8 @@ patternProperties:
     $ref: "regulator.yaml#"
     description: smps/ldo regulator nodes(s).
 
+additionalProperties: false
+
 required:
   - compatible
   - qcom,pmic-id
@@ -351,8 +353,6 @@ allOf:
         "^vdd-l2[01]-supply$": true
         "^vdd-s[1-8]-supply$": true
 
-unevaluatedProperties: false
-
 examples:
   - |
     #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
-- 
2.37.2

