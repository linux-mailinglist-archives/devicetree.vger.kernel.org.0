Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A305164F50A
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 00:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbiLPX32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 18:29:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbiLPX3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 18:29:25 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56EDC24BD8
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671233315;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=oOzuvF1JcJhHhAVx50brEATiwwsFfA/JQNQZSVDvP8U=;
        b=U29Km9rWgdrohDxWF3gE0Cp4cEWhiQW4TVrPTSeAcW8OnBoQDlCBxd0S0sxvMiiquyDx//
        e4Ch9LVix7pdfmhs5mdFHUAePJfIsy938MnuHfxI4rCrnb5+hpWjryYyC1hGA8K4uwhp7G
        0gkfYKforhkfcS0p5KBfc6wREkkkjeg=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-272-V4YE_ZlWOt28EO1Drel9dg-1; Fri, 16 Dec 2022 18:28:31 -0500
X-MC-Unique: V4YE_ZlWOt28EO1Drel9dg-1
Received: by mail-qv1-f72.google.com with SMTP id oo9-20020a056214450900b004cfdcb99fa5so2328538qvb.13
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:28:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oOzuvF1JcJhHhAVx50brEATiwwsFfA/JQNQZSVDvP8U=;
        b=NOSKPeCORpjEJq7OYTlgZtt0egThVp3eLmRA0PYhL1LEz1veMut9mOyfWCsYFDFHcU
         E9ydbxs+VgxAHwFJEr5UvxjXJedVFnqCssgi/nP2Tc9HpcDW2CeI9x0GMOCLLs3U+VBh
         YF52x2zQsFbyJWG6KnP+IuOD/phRJflNYxyu3mOiLaGYCBm0STESwh28MjHyoULRxfQv
         +0ohrq3xWyqsxjSRcpb2KCF5K1KFNStCcKtgIKTsbjnBLZgpU/PqzKFgQPpXf/I6aEr6
         2hJbWpAqI/SBF7Qmd/Gu3TvDPY9HkoKESASwisE3LGp+1xDky3nhxONCSI7Dzfaz4NnS
         8Ggw==
X-Gm-Message-State: ANoB5pnwDVUrUoE8wQuXVLTZfD7zUgU9k9dIJEsD3aVyrP2M1JnsBOM7
        cYXFU2Z0hVcPQMH0jvVV5gS+peFEb27blzxErns9TKro4bizuHMOIlGGY37gekDNSf3neHlu8v9
        0d2Okkbo6HiToC2uMFkaaow==
X-Received: by 2002:ac8:7547:0:b0:3a6:18ff:c6e2 with SMTP id b7-20020ac87547000000b003a618ffc6e2mr43270451qtr.28.1671233311112;
        Fri, 16 Dec 2022 15:28:31 -0800 (PST)
X-Google-Smtp-Source: AA0mqf65ipvRxOI0wPxhp1/suNkdbXHX84i0WSZZczzJb/1BWyw3GOFbPSxcXH2idaxxlQ6iUsbnjw==
X-Received: by 2002:ac8:7547:0:b0:3a6:18ff:c6e2 with SMTP id b7-20020ac87547000000b003a618ffc6e2mr43270434qtr.28.1671233310883;
        Fri, 16 Dec 2022 15:28:30 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id a16-20020ac81090000000b003a82ca4e81csm2042872qtj.80.2022.12.16.15.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:28:30 -0800 (PST)
From:   Eric Chanudet <echanude@redhat.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>,
        Eric Chanudet <echanude@redhat.com>
Subject: [PATCH v3 0/4] arm64: dts: qcom: enable sa8540p-ride rtc
Date:   Fri, 16 Dec 2022 18:26:02 -0500
Message-Id: <20221216232606.2123341-1-echanude@redhat.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable sa8540p-ride rtc on pmic@0.

sa8540p base boards share the same pmics description, currently in
pm8450a.dtsi. Rename the file to make this explicit and use it in both
sa8540p-ride.dts and sa8295p-adp.dts.
Add the missing offset where appropriate for the alarm register bank in
other qcom,pm8941-rtc description.

Changes since v2:
- rename pm8450a.dtsi to sa8540p-pmics.dtsi.

Changes since v1:
- Add "alarm" register bank offset at 0x6100 in qcom,pm8941-rtc
  descriptions.

Eric Chanudet (4):
  arm64: dts: qcom: rename pm8450a dtsi to sa8540p-pmics
  arm64: dts: qcom: sa8450p-pmics: add rtc node
  arm64: dts: qcom: sa8295p-adp: use sa8540p-pmics
  arm64: dts: qcom: pm8941-rtc add alarm register

 arch/arm64/boot/dts/qcom/pm8150.dtsi          |  2 +-
 arch/arm64/boot/dts/qcom/pm8916.dtsi          |  3 +-
 arch/arm64/boot/dts/qcom/pm8950.dtsi          |  2 +-
 arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi     |  2 +-
 arch/arm64/boot/dts/qcom/pmp8074.dtsi         |  2 +-
 arch/arm64/boot/dts/qcom/pms405.dtsi          |  2 +-
 arch/arm64/boot/dts/qcom/sa8295p-adp.dts      | 79 +------------------
 .../qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} |  8 ++
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts     |  2 +-
 9 files changed, 17 insertions(+), 85 deletions(-)
 rename arch/arm64/boot/dts/qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} (90%)

-- 
2.38.1

