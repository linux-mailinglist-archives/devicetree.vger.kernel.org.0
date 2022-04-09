Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CB2D4FA9B0
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 18:46:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242757AbiDIQsK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 12:48:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231749AbiDIQsJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 12:48:09 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFDA999696
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 09:45:59 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id e8so754503wra.7
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 09:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q4VefLXC9hYo+En+VIf0R1ICCo4kz84H7Hf9PyR85Ng=;
        b=J/WkI8J8bDIrqVS9+4Dl7SvP1G2KglYrYfZ+cBbyAoSbYsx3NdeiR91zHswbc88lea
         k11Ke2MI7Bz5S9DMt40P88umwsLR+GhTfR9kHcaeaJJxMYtQOIV12ZYT/qW6XwEhz0dO
         IQF6aqevPmY3QBniGbqU6gQSmXIkIq8/qXwg2lZGa1HZ4AlmLt41jSV+WxnbRGxMaltC
         eqgSyC8ZuenxyCye6fdYA8wCG0IRnoSAzp0IXp2Rtkdgca/uhIIajyYuS0/RP9SfUBKZ
         ms/jSvqosKy6f7lEOGLdUZOLVnfJNHCIxnQbaRD3G5iRwneHX48dd4Awdlj8P0xY7STC
         CbuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q4VefLXC9hYo+En+VIf0R1ICCo4kz84H7Hf9PyR85Ng=;
        b=NLyzxXH3CujUs8w2KlhliPs7RWB014TKVI0S5fjwZyLT1d0Dt3YxHrr2U9O8vv2SJy
         GE3MgntOBCvz8If2Py5xdpJYT6cQ2Sphh9amkoGB/STHqDrtB7TrbqmyZUJyorZKsO6o
         jGbUi0uj9yxuzrI7WT4f3ikqMuFWDRnlNXvSpRBYuYEEaFAwaqCmX8JWSv2B+hgUvkSO
         i84oU6+FXktfQYgDlhd6b1sSp1NPdK6rNKyfAHjYdhhsF2Ne9u9cMuGdpkctiLWFOBm4
         AzjmXAVS0r5mi+DXs08XESOluE1nuG/jk6uSLV339b6aRGvsU8wg2i77l0uwxAadJAh1
         qBxw==
X-Gm-Message-State: AOAM533E/963NSfTGj7xoiFz/iJP+tWs6SyMZhu6F0ORYDD9JuTXtQJi
        BcBwfurvl4oGzweoYKJDeKWuFg==
X-Google-Smtp-Source: ABdhPJzBEotYQvjz7FJ21f33aBCGA1NHXmSfHQH24EwfH0eiRMLdH7yPbSmrDd5NNy6BOzVtzySTRQ==
X-Received: by 2002:a05:6000:154d:b0:207:90c3:128e with SMTP id 13-20020a056000154d00b0020790c3128emr7704322wry.414.1649522758487;
        Sat, 09 Apr 2022 09:45:58 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j3-20020adfd203000000b0020616cddfd5sm13901357wrh.7.2022.04.09.09.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Apr 2022 09:45:57 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, jonathan@marek.ca, hfink@snap.com,
        jgrahsl@snap.com, bryan.odonoghue@linaro.org
Subject: [PATCH 0/4] Add camss to SM8250 dtsi
Date:   Sat,  9 Apr 2022 17:45:52 +0100
Message-Id: <20220409164556.2832782-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add in necessary CAMSS, pin and CCI definitions to the SM8250 dtsi.

This is the SoC specific stuff, the platform enablement will be done in a
separate drop later.

On the RB5 platform we have validated ~ 30 FPS @ 4K using the SRGGB10P
pixel format provided by a Sony IMX577 sensor.

Link: https://git.linaro.org/people/bryan.odonoghue/kernel.git/log/?h=br-v5.19b%2brb5-dts%2bsensors

Bryan O'Donoghue (4):
  arm64: dts: qcom: sm8250: Add camcc DT node
  arm64: dts: qcom: sm8250: camss: Add CAMSS block definition
  arm64: dts: qcom: sm8250: camss: Add downstream camera pin definitions
  arm64: dts: qcom: sm8250: camss: Add CCI definitions

 arch/arm64/boot/dts/qcom/sm8250.dtsi | 721 +++++++++++++++++++++++++++
 1 file changed, 721 insertions(+)

-- 
2.35.1

