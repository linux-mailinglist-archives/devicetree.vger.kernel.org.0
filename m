Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 911B8651279
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 20:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232171AbiLSTNW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 14:13:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232341AbiLSTMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 14:12:55 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A629101EA
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671477122;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=LyOOTOslnaWRlsHPF8vWnhN0NTrLj4S9IZbtD5zhwpw=;
        b=M3hMxafHXHqJcfVLDP1UHx2yvZNKGBL8wMErIb/oN24KnoeNrdm7nBVCRmIhlYcJBPJeF3
        Y0zEPCGoVB1Wm50drXb99x5GYz7te1zZrVelIk0KEBeW6qQNq+orUFckNFTWCxrN340KdP
        VqncR3UnNiVzvZ2Qy4ZH7fPJRMA3WIU=
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com
 [209.85.217.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-126-Lsg0qyIdPWWTOBdBgJMQlg-1; Mon, 19 Dec 2022 14:12:00 -0500
X-MC-Unique: Lsg0qyIdPWWTOBdBgJMQlg-1
Received: by mail-vs1-f72.google.com with SMTP id h6-20020a056102104600b003b1371d70e8so2740576vsq.11
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:12:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LyOOTOslnaWRlsHPF8vWnhN0NTrLj4S9IZbtD5zhwpw=;
        b=xVfLCaAxUDIJeqZjh65Rb7SbG+ROkg2hWbpxTwrMUBKCTT3tJ801XQhJ2nyHRUqeCf
         jtF2Eca5BWK5qeQAJP9A0wvACy9eAfZCMXz7PMZ53kcutyvhAjwwaz46ZZhPARqdMNtT
         ydbndlSwuuArmW4UhLQ9/Epsk/27u2cEc19sKv19S5BpWPYdq9qu5Q5F5zwWcemJKxBm
         wz1E5RqODxPoid9s2sb5MCUThh4AhB1YxTLYpbPxEVgQByccgCCDJ46LLyc+xfDEkZDY
         JzFZhnWA14iwuuwE9kLfZ/scZK8Y6qQ0tkNxzwdjn9RZhZ/GT8/Shq7fhhYZMdPEwRyJ
         YF4A==
X-Gm-Message-State: AFqh2koPhlw0x5MGCvEQP07X270jV6/jvwcxCR/LHeM6OBrIQYtlb1MN
        TVLrXbX1osoWxqtK6v6qjB5f+tBhLlM2lO8lv0yJUu2CT51xjPoyUQmCsxVamVmn8/pj+OWIyiz
        SU0LkmxmEYI3q7/297DX+Zw==
X-Received: by 2002:a05:6102:1521:b0:3b3:795:d88f with SMTP id f33-20020a056102152100b003b30795d88fmr7279456vsv.10.1671477119938;
        Mon, 19 Dec 2022 11:11:59 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsbUkmADSZ5i62fDBCt+kHtvZfs95tMBmvOIs8FSB9qEgpO6bfdZiQh72iXqJDtv+nTghwYuQ==
X-Received: by 2002:a05:6102:1521:b0:3b3:795:d88f with SMTP id f33-20020a056102152100b003b30795d88fmr7279426vsv.10.1671477119666;
        Mon, 19 Dec 2022 11:11:59 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id j3-20020a05620a288300b006f9c2be0b4bsm7217436qkp.135.2022.12.19.11.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 11:11:59 -0800 (PST)
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
Subject: [PATCH v4 0/4] arm64: dts: qcom: enable sa8540p-ride rtc
Date:   Mon, 19 Dec 2022 14:09:57 -0500
Message-Id: <20221219191000.2570545-1-echanude@redhat.com>
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

Changes since v3:
- Amend patch #1 incorrect description.

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

