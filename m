Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49AF86107D6
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 04:17:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235947AbiJ1CRo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 22:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236087AbiJ1CRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 22:17:35 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76525BA934
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:17:32 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id h24so2735832qta.7
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BJWq+oV9qCWB9nsJJoQSKw7FQSgWYiEd+bdoELvwk7c=;
        b=VybGqElICFb96ny5ImphHSJ4bPBiryi0OLukwgdxtu7Apmvl6DqhkGO6US9H+puEjr
         rOdYx4AAQ7ijRQ0853O4pV3fdTdfBOay+Y9RNZkyd5DP5OlmvtyqYJoj7NdxTdfPKZZs
         pJ0tBSoKW+EHYTQNRmAPOztYPVOk8WwYRCSPdCu72M1k036ZDrOpjWTyitgfsGwyPiKh
         7S5wakI/81U1g04sbymHYoat3Zr9W0mZOU4pqNPLSpzcc06bxKDj4TbI60UIpG+ufErA
         aCuEuC1/Uk5kSG9GlmrHMtBmMNoyKLAXL/cb5HK0v21yq7kqgSsHMvvuIb+Fslsu7Rw5
         Ftow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BJWq+oV9qCWB9nsJJoQSKw7FQSgWYiEd+bdoELvwk7c=;
        b=GCJrR65xvqSA6ZBgdT6l1yyxWczmp2h9rcz51bJZgieBRDjSxcEVOHU9ukCcHUNf/F
         WS+wVc6orRH5030N9fZXHl0FfM78Y8vfX8pxWwpx42ni1Go2DDe3yBpg13+vxaO9dUD1
         +cv3po+pXihe8YjBRODNj9zmGD/yRlez4ST9M64wWslBbTX3nC+SYMLpburzt2/miI8T
         tkP802NoYkJ/a0KzDEFsp6ING83GuNpdffs8fj9GeIrzCdehOQhq1NB9DdUgagOehuR7
         3EXyUOJsEbp78OPiyQubct2eaD07GvEz9yPhsgH5RvEvazi5rlEeIxmyzgxcJRrkFbH1
         TxUw==
X-Gm-Message-State: ACrzQf3UJgFdKlvOkbft4a9cFJpnRh6kskusW+7r6Q+tgbKuwh2AQz15
        o8HDzP8ooCreBwU8D7ApHP7hUw==
X-Google-Smtp-Source: AMsMyM6sHImfq+ADwCCpfFGFstcpO4jS6IWwSFdv+ExMapjj41nSytwQQbllPPAuW9NuIBm3yZW0Iw==
X-Received: by 2002:a05:622a:1646:b0:3a4:e8b5:b8c8 with SMTP id y6-20020a05622a164600b003a4e8b5b8c8mr12886869qtj.339.1666923451637;
        Thu, 27 Oct 2022 19:17:31 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bs15-20020a05620a470f00b006ec09d7d357sm2101353qkb.47.2022.10.27.19.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:17:31 -0700 (PDT)
Message-ID: <7fe4bf93-6b60-f1f7-d89f-8d7f75c9e58c@linaro.org>
Date:   Thu, 27 Oct 2022 22:17:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 3/3] dt-bindings: clock: imx8mp: Remove unused
 IMX8MP_CLK_AUDIO_ROOT
Content-Language: en-US
To:     Shengjiu Wang <shengjiu.wang@nxp.com>, shengjiu.wang@gmail.com,
        abelvesa@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, marex@denx.de
References: <1666922026-6943-1-git-send-email-shengjiu.wang@nxp.com>
 <1666922026-6943-4-git-send-email-shengjiu.wang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1666922026-6943-4-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2022 21:53, Shengjiu Wang wrote:
> Remove unused IMX8MP_CLK_AUDIO_ROOT which is replaced by
> IMX8MP_CLK_AUDIO_AHB_ROOT.

You break users, so this should be a bit better explained.

Best regards,
Krzysztof

