Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53A6864A6FD
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 19:24:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232336AbiLLSYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 13:24:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbiLLSYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 13:24:11 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93169DFA8
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 10:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1670869404;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Tx9zUylKBDfFBr3UTAZ+7it8/woVWVXeZHnqYTyyfFg=;
        b=CTzga9szZGNbHgYAVHkPdAH1BvclSihP+ASJb8GZ/Kh72ZFnCbXNYKgsJaQXNwClwrNSmP
        m6f7bqA/JB7WEATI86V9CzGWKAFf8SkKhEA2KXeUlePb49tPqqc5hcZ4me8xed5CNPfvj3
        /C6IetDbZCRxpf3otm2xEbHh8o1zdtE=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-49-Kre4RBtINCC69mkWFuYbIw-1; Mon, 12 Dec 2022 13:23:23 -0500
X-MC-Unique: Kre4RBtINCC69mkWFuYbIw-1
Received: by mail-qv1-f69.google.com with SMTP id 71-20020a0c804d000000b004b2fb260447so12359187qva.10
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 10:23:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tx9zUylKBDfFBr3UTAZ+7it8/woVWVXeZHnqYTyyfFg=;
        b=eRshC8/ZwsxikH5T3rMf4yYcM79cOJnqC35tvWSBz/fsD+qSBPGiNVZg6zL8q7YY8p
         kKHv+OvdKAwkduj8WaWisJa1USrWQUeoVjLnkKZkaJwqLq127gGl+p029hpVr1mqjWfv
         4hiWxv7m3A8JdvpVmsSIrNxZo6sYdJX6hViGD+/kCtBf56XBRZERoF/BnioElleEVyPs
         9qYoTUUijjJt+dEOYR3fAqNxZ1oHO2BAbf1UmNEet8PMZa3P9jyczqVBO3mu5EFuDPGB
         H4xqUrr4ymYHNdQrBCnX3pw6Jl+ib5qLoshdwmrNcbV2zRFKoTHQYh6fpbsv/9QHhzik
         TQwA==
X-Gm-Message-State: ANoB5pn64xB0ympY8Uqf3HxX1jCIwXqYdCyyz8EiJmzEgy2/EFFCu0et
        STTkbsv/Nt11L9Pw2L9TyhAadJbvRCEohtyDmCdsSehBGvW7Gsh2jU4kx34fH3VK1+rWgk51Zni
        7Pa650T45afDJKuoktxvs1w==
X-Received: by 2002:a05:622a:40d:b0:3a6:9cfa:d6a with SMTP id n13-20020a05622a040d00b003a69cfa0d6amr34143902qtx.30.1670869403159;
        Mon, 12 Dec 2022 10:23:23 -0800 (PST)
X-Google-Smtp-Source: AA0mqf68yCfVvT7yzOgIFVasf/aQAthqe8C5fxTiuJLYFSRNww7CRo4RPR7WgE0z5yI/hHFsRNgkEQ==
X-Received: by 2002:a05:622a:40d:b0:3a6:9cfa:d6a with SMTP id n13-20020a05622a040d00b003a69cfa0d6amr34143873qtx.30.1670869402946;
        Mon, 12 Dec 2022 10:23:22 -0800 (PST)
Received: from x1.redhat.com (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id 3-20020ac85643000000b003a816011d51sm1998185qtt.38.2022.12.12.10.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 10:23:22 -0800 (PST)
From:   Brian Masney <bmasney@redhat.com>
To:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     konrad.dybcio@linaro.org, robh+dt@kernel.org,
        johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ahalaney@redhat.com, echanude@redhat.com, quic_shazhuss@quicinc.com
Subject: [PATCH 0/4] arm64: dts: qcom: sc8280xp: add i2c and spi nodes
Date:   Mon, 12 Dec 2022 13:23:10 -0500
Message-Id: <20221212182314.1902632-1-bmasney@redhat.com>
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

This patch series adds the i2c and spi nodes that are missing on the
sc8280xp platform.

Note that this series needs to be applied on top of:
[PATCH v3] arm64: dts: qcom: sa8540p-ride: enable pcie2a node
https://lore.kernel.org/lkml/20221212150045.4252-1-quic_shazhuss@quicinc.com/

Brian Masney (4):
  arm64: dts: qcom: sc8280xp: rename i2c5 to i2c21
  arm64: dts: qcom: sc8280xp: add missing i2c nodes
  arm64: dts: qcom: sa8540p-ride: add qup1_i2c15 and qup2_i2c18 nodes
  arm64: dts: qcom: sc8280xp: add missing spi nodes

 arch/arm64/boot/dts/qcom/sa8540p-ride.dts     |  46 ++
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |   6 +-
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |   6 +-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 738 +++++++++++++++++-
 4 files changed, 789 insertions(+), 7 deletions(-)

-- 
2.38.1

