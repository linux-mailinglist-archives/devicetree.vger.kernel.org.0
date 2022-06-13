Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 352A0548433
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 12:15:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236451AbiFMJrP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 05:47:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239412AbiFMJrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 05:47:15 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC9941928C
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 02:47:11 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id x6-20020a1c7c06000000b003972dfca96cso2749133wmc.4
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 02:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QBbQ5RlehgZnaAFrfhn8bcmuDJisLZ8n0VZI5+tVYd0=;
        b=Z3v0eSGeIIXyS+chr/DHZqDXVP9ghpBeOpyTPZnRzgvBMK2KTKcmPqiJQKdaYyAUFN
         /5I3VKtpsPS2LnAfqV4Wt5PnVqFDqh5lxiRB9AfwBzQFucpd0XxU++wTExjO1rPgcUJh
         hRDUoFoC0QnkrGyym9py85jy3rwrZS78VeOvzaiWNOVeoK0jOGfMUm9kRZ4gYAcJx1qO
         eWsCODyQWnmNHe5Nj00hoLKS0IdxF6kO8DPpvf65RTkwf/uBvbsNghF5OQ+XT0+KoA8l
         Q/Pwj0p60nA7MvqurDqt35ZXIfidOhub5Ukw59AbL3imUl8oD+xQ3l9yVVvUC4mC98ne
         DuHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QBbQ5RlehgZnaAFrfhn8bcmuDJisLZ8n0VZI5+tVYd0=;
        b=cn4bZ858eS+cPDEZ1l+DCew6+N3s5kPk1wadBnO6nlTExilBZUod4TJly3jewMEDKX
         2/YBfQFPQRfF8A0s54vVdU0k25qQwqGKz80plQtR5+N2TQXoqVzN0R1hp6qe/MMF1ff2
         36lgafYRteUj9qbT2QFyN82SpfqO0N42IKgJq1cqtkXga2ROlKTHgKwRUhn210TYP3zu
         GFDAUl1xumY0oYdQHIphh8YjBwJVtfNo6rlqftv0xS8mt4Pbj/vemLQ+Fep/8Z22gw1A
         HevaNmAG/yDGKNDEqoqjrOOinYN0gt4kFeknYbcc1FZAJpXONuk1Hg4ASbr11//rL0Mp
         vtUQ==
X-Gm-Message-State: AOAM5337q3w3Qy0IuAjg8K1L9K/q/iNVPBd3SfPjaaKw16vUQPxNP50R
        PKv+qaAWaK49Qf/VxHZuhQwDUg==
X-Google-Smtp-Source: ABdhPJy7gGaJAsLK4y+fIQ/Ft4Fmg9Bv62EVmuuU3nkUVCLfFTuDLBrT56zqaFARL7o+XzGT3C/n8Q==
X-Received: by 2002:a7b:ce98:0:b0:39c:4dc7:6707 with SMTP id q24-20020a7bce98000000b0039c4dc76707mr13988444wmj.51.1655113630472;
        Mon, 13 Jun 2022 02:47:10 -0700 (PDT)
Received: from [10.227.148.193] (80-254-69-65.dynamic.monzoon.net. [80.254.69.65])
        by smtp.gmail.com with ESMTPSA id 10-20020a05600c228a00b00397342bcfb7sm8762339wmf.46.2022.06.13.02.47.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 02:47:09 -0700 (PDT)
Message-ID: <71874de3-10f3-aad5-6f86-373f13bf4d90@linaro.org>
Date:   Mon, 13 Jun 2022 11:47:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 3/6] phy: samsung-ufs: add support for FSD ufs phy
 driver
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        avri.altman@wdc.com, bvanassche@acm.org,
        martin.petersen@oracle.com, chanho61.park@samsung.com,
        pankaj.dubey@samsung.com, Bharat Uppal <bharat.uppal@samsung.com>
References: <20220610104119.66401-1-alim.akhtar@samsung.com>
 <CGME20220610104350epcas5p2a42643432e60d7ba18f2a2afcffadfaf@epcas5p2.samsung.com>
 <20220610104119.66401-4-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220610104119.66401-4-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/06/2022 12:41, Alim Akhtar wrote:
> Adds support for Tesla Full Self-Driving (FSD) ufs phy driver.
> This SoC has different cdr lock status offset.
> 
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> Reviewed-by: Chanho Park <chanho61.park@samsung.com>



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
