Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82AE876C447
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 06:50:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231354AbjHBEuv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 00:50:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232118AbjHBEuq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 00:50:46 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4336F1FF0
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 21:50:43 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3090d3e9c92so6449365f8f.2
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 21:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1690951842; x=1691556642;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3DS2RL5obmZZ/547++yGwfh8JdilyRPTv9icsyAm4RY=;
        b=NKsXT1AV1Jcw/VgusGwng9x8zA9c9ocATNdIXvHzRgFGpw/DamBjEp8j9jr2RDFZ1D
         VjvMaQRLq37q1xdXLKXJMacC3OQ4Sw0+BBl6MKpnrh7HHlt/RvHLf23T+6pzOQQEvwRz
         DWRfElRNmf+QgKFXDBtO4nKbsm+Q0qMIMGoS3UnlmmrcJTrgl1CQx7YopHenF+HpdUWG
         gZRDNq3CmlkikHhZbrcSbUqesZ3oyO8f7g+rNGgtNufjuu/y6V7JbPYBAdNSh5D0fKP1
         IbVoI/mHnuX+Kbwx99/py3ityj20Xv9qWQCKNyTLZy1piT76ALrYl2/Lnl9ZYNth+/pz
         q/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690951842; x=1691556642;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3DS2RL5obmZZ/547++yGwfh8JdilyRPTv9icsyAm4RY=;
        b=Jbl/fNNiC/clvh+rLA37fcDgJ2MvHBWjJDqe3b8I8YpJHyB5naDu5Pwn9UcjksQwjJ
         cLvHhAkP/LFP35iECjn485ttgnOifO2qYDY2CbSZizIqvEsg1zmVqvp5SqRaI2HkrQ6s
         h0XlpMqfClKk+fOvMpeJphS2fB5BSyt6vHSADtcv1Yz0t0DO7vSESuQTkvFxQrRn/nRh
         HNjucXm/SAh3mldOMuv9polhcunMwWs1Oeg36nSNTjhu3+6W7NFxx1faXVG33FhGSbM3
         lG316ahhfZ3iYFyeiJsx4xUkYwEd+nGkbQihaZJE5D2YfrgtNg5J7uVr615qqeTMO/gt
         cnSQ==
X-Gm-Message-State: ABy/qLa1nIayp3xZTNUhn7FVI/o2fYrm8Zj+ZALIKwVErO6xcq+uE6vA
        sWocXczUBa3a0Oj7Xluc6Mem4A==
X-Google-Smtp-Source: APBJJlFzUnB9VeLEUigytHVDN9iqAeJzEb9uPr3+qeF10C5Y/tZ/iikPX9R1sJkAlrmNjTFPbsi5xg==
X-Received: by 2002:adf:e741:0:b0:317:5a9b:fcec with SMTP id c1-20020adfe741000000b003175a9bfcecmr4351556wrn.14.1690951841634;
        Tue, 01 Aug 2023 21:50:41 -0700 (PDT)
Received: from [10.0.2.15] ([82.78.167.79])
        by smtp.gmail.com with ESMTPSA id q10-20020a7bce8a000000b003fe2120ad0bsm612734wmj.41.2023.08.01.21.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Aug 2023 21:50:41 -0700 (PDT)
Message-ID: <0c31978c-2105-f656-cc27-76fefdb274ec@tuxon.dev>
Date:   Wed, 2 Aug 2023 07:50:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] ARM: dts: at91: ksz9477_evb: Add tx-internal-delay-ps
 property for port5
Content-Language: en-US
To:     Lukasz Majewski <lukma@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-kernel@vger.kernel.org,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        linux-arm-kernel@lists.infradead.org
References: <20230727080656.3828397-1-lukma@denx.de>
From:   claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20230727080656.3828397-1-lukma@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.07.2023 11:06, Lukasz Majewski wrote:
> Without this change the KSZ9477 Evaluation board's Linux (v6.5-rc1) shows
> following device warning:
> 
> 'ksz-switch spi1.0: Port 5 interpreting RGMII delay settings based on "phy-mode" property, please update device tree to specify "rx-internal-delay-ps" and "tx-internal-delay-ps"'
> 
> This is not critical, as KSZ driver by itself assigns default value of
> tx delay to 2000 ps (as 'rgmii-txid' is set as PHY mode).
> 
> However, to avoid extra warnings in logs - the missing 'tx-internal-delay-ps'
> has been specified with the default value of 2000 ps.
> 
> Signed-off-by: Lukasz Majewski <lukma@denx.de>

Applied to at91-dt, thanks!
