Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8669A52740D
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 22:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235137AbiENUpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 16:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235142AbiENUpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 16:45:03 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54EE815A16
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 13:45:02 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id u23so19899087lfc.1
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 13:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MdfM/HONZC3fS+MtAXHVlITNlpLFIi5MOZuDuXkooss=;
        b=khMzfOKisE9yhASS0XyoadCXEjwNI9/6dbBzGKxChR0LJbgMgMBBYOWeg+nYuuhUEi
         1mQTHxlSGWbOc43CcFAGyzUoPW3E870lAghxtmIqDhhs7Z5B4eAxeTAmbHymp7Q6j4kS
         RlrIDgAfmh+RJuAbCOTwImywdKNVnRRLlzrv7CsN64R7kAiBPoNwT3NuG5LCADJUJgX5
         5Ig+uhURyT2PYeh7MdPfQruC3sUVF3Nlx4G6ubLmlQhzwQOJ49W7v1Rp6Njo7/PRqpiu
         il81A7dTLCnHCvERK5RhLfMko6H6g8WnZD0CewABufBbB3KX0bniT1mgWPkhmHbfg+t9
         axtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MdfM/HONZC3fS+MtAXHVlITNlpLFIi5MOZuDuXkooss=;
        b=TxMhwHO7qjOt3FEoUFadh/ptYWT/nfYytCLcmoJ9VYrXyI/b3kkwW2hfubg+bW6f2h
         l7/FyikSw6u43VkftKfrvbGYmbBIl+/t0kwkPOH6QuzWV9esrbgSiAGBnlYShH6seLco
         i354CnK+ZdjC4IbhX2RJd6gy2ZPBE7Zj0u9PNCrbG0vmvhiZQxl+kZ3fPVe6LclvM8Io
         q4GBxJRdWvr9sWqFA10DaUJdWORzndvPEFar8vZka07QG7rc6g5AhPLsyM13BSHHkzQc
         tOno3C/UhwYgH1L1H3eZTbEvpB8ViLJgM3yTvoTFCc5XDddUDKZJCZu8fk1VS1FPaKVh
         VmIw==
X-Gm-Message-State: AOAM531HksYTGxrQIjpsmUp8jSTm80Aon5NJ4riU2EIuOoM4r3l6E8w/
        zQqlz55yWHYjjQ3mY1kPO2oWAw==
X-Google-Smtp-Source: ABdhPJy2KoQq0Weib9Kud6u4wMDOWPKK1rWbgJ/y837Uw6TP1i6MtO7ganhIRIxennTKxocnqGUmEw==
X-Received: by 2002:a19:5043:0:b0:472:36fd:4fc2 with SMTP id z3-20020a195043000000b0047236fd4fc2mr7660828lfj.258.1652561100624;
        Sat, 14 May 2022 13:45:00 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h25-20020ac250d9000000b0047255d211a5sm804213lfm.212.2022.05.14.13.44.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 13:45:00 -0700 (PDT)
Message-ID: <9fb50d77-89a5-65a0-ba77-2a810f901518@linaro.org>
Date:   Sat, 14 May 2022 22:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-rockchip@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220514115946.8858-2-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/05/2022 13:59, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a new binding file for Rockchip PCIe v3 phy driver.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
