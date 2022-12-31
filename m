Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08D6865A780
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 23:32:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiLaWcg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 17:32:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbiLaWcf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 17:32:35 -0500
Received: from amity.mint.lgbt (vmi888983.contaboserver.net [149.102.157.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C4FC63AB
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 14:32:35 -0800 (PST)
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
        by amity.mint.lgbt (Postfix) with ESMTP id 4Nkxhd4DlQz1S5Dm
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 17:32:33 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
        content-transfer-encoding:content-type:in-reply-to:from
        :references:to:content-language:subject:user-agent:mime-version
        :date:message-id; s=dkim; t=1672525952; x=1673389953; bh=Ti0oa6J
        7bhk8fQrWKmd8muaqULGy5ddsI2uXdrLykkg=; b=zxNEmSl8cEWsBPBFHQ1AQ/8
        du5VC2HD0B4RIwRssY6D+sa8vECxRGqTTlowkgq9T9mezke5OcQmMkujJDXU1z6F
        b6KwZAQ+4XyYxLDL0qj8/NH1Y05BFaHwl10j0Yjhv9GgEs1bn+cdSlNUZYzuLPzY
        6sMxhvtVSsu1Ex/S55oNJCaSwH/k04DAiXt5J4946YsZG0v/BHQX0qodTljyPkWU
        iQcC8iCF7/ScwCdfRc5CKqzgRdAWtZLjHqm6wyRs+xFAI9jzOrpJI8fz7kaHOKEJ
        XApbiXWDjaY0TA5EArXYaZodbkRIVFsi2u92V2A/TGo/OwDSOUSoLraqzNnR0bQ=
        =
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
        by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id XycLSIMsex0C for <devicetree@vger.kernel.org>;
        Sat, 31 Dec 2022 17:32:32 -0500 (EST)
Received: from [192.168.4.25] (unknown [190.196.92.66])
        by amity.mint.lgbt (Postfix) with ESMTPSA id 4NkxhY4pc3z1S56h;
        Sat, 31 Dec 2022 17:32:29 -0500 (EST)
Message-ID: <38d2c380-1107-9ac9-ca21-d2f5c286de81@mint.lgbt>
Date:   Sat, 31 Dec 2022 19:32:27 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: [PATCH v5 0/6] arm64: dts: qcom: sm6125: UFS and xiaomi-laurel-sprout
 support
Content-Language: en-US
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221231222420.75233-1-they@mint.lgbt>
 <20221231222420.75233-2-they@mint.lgbt>
From:   Lux Aliaga <they@mint.lgbt>
In-Reply-To: <20221231222420.75233-2-they@mint.lgbt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce Universal Flash Storage support on SM6125 and add support for the Xiaomi Mi A3 based on the former platform.

Changes since v4:
- Rebase on GPI DMA 0 and IOMMU patches for SM6125
- Add dedicated compatible for SM6125 UFS PHY
   - Add offsets to SM6115 UFS PHY config
   - Document compatible for SM6125 UFS PHY
- Add IOMMU support for SM6125 UFS Host Controller
- Modify reserved-memory node names on xiaomi-laurel-sprout
- Add thermistor support for xiaomi-laurel-sprout
- Add PON support for xiaomi-laurel-sprout (pwrkey and resin)
- Add gpio-keys node for Volume Up button
   - Add PM6125 GPIO node for Volume Up button
- Add SD card support for xiaomi-laurel-sprout
- Add regulators to USB PHY for xiaomi-laurel-sprout
- Removed empty line on UFS host controller and UFS PHY nodes for xiaomi-laurel-sprout

v4:https://lore.kernel.org/linux-devicetree/20221215190404.398788-1-they@mint.lgbt/

