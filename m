Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1DEB5F3363
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbiJCQWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229633AbiJCQWl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:22:41 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79D061DF2B
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:22:40 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id c11so17522475wrp.11
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=D5pXQsMMi7moC3mXvNU29sA3D/rodNgy/MSdInrFFLM=;
        b=Z2TY18qYuQhda2jTGLjJWoxYyFIyR1INnP2UHyNlnyVgjHWlR+znbw93Y6aga3gKQH
         ETy9H/e9kylF285cJTGDTpoHUncFZ5O/c4xoDWQ+8QmZSBO0HuONcl+Z71vkRMkT+yuv
         2h7CPvJVMiv2NAkQ3hWo3hs3XTREKfln9Fv9C9roX7yL0sMbuLpH5TF9kcHgrWTJhNz0
         FQU4N/VDqs1cCrr0q/sO1XzSFLGzDhGoJVTzhuQJHD2Vv+byCuADonVomuDQy9l+VcbQ
         wa4EMvmHMblMErVwyJDFVU6+URHBgG9NYWazUvIa6gyPcVMCorOGr5L99Qu+07JfI9av
         qUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=D5pXQsMMi7moC3mXvNU29sA3D/rodNgy/MSdInrFFLM=;
        b=xqEEKDz+uubgJ2NHa9vqrfTr3vU/+wxWYjCkbtgqKJt8g1uZ2eZAiisuENrStZ2xpG
         ooKA37Og2/8whd2a3j8huLtczMhzRhAmi3VopYGnNnYG1ERKUGcsVwhQKY5aFOimk5mD
         O/fySQGfJG1AxF3S2VFTZzFspAalo1h2JbEMbygV9n4UIk/o/GvRjf9Cr24DHy/jvf2z
         Rl8mlPcd+8FQ27V0pVHUUa+GmGUXnaaav1/ygOjYaQOGWeriZbeqVBiEPLq8B5ERh2VH
         0gApbIffKuRW8Ed6xnCAUu1Im1R+tCKz+oZFric1BkwEowKnTuY2WwHy1err49LxPTZS
         qW2Q==
X-Gm-Message-State: ACrzQf0AQLrF2feDJsjlUjEJHN11GQ68HgeS2Mozb/JLxUfSdtLq4hHW
        exGQrlK/W+MXgZ1qHYUMHc2Chg==
X-Google-Smtp-Source: AMsMyM690xN/kwBSq+gs9AOSZvBkI47hHVXhOQtXJOowPtH3oWUYJrLTaoHGN5PCMkMFkkZt2/PHBA==
X-Received: by 2002:adf:ee8b:0:b0:22d:e736:c2f1 with SMTP id b11-20020adfee8b000000b0022de736c2f1mr9232228wro.89.1664814158811;
        Mon, 03 Oct 2022 09:22:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id x24-20020a05600c189800b003b4727d199asm11350321wmp.15.2022.10.03.09.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:22:38 -0700 (PDT)
Message-ID: <5c8af71a-6e03-0849-2a97-75ec673879d4@linaro.org>
Date:   Mon, 3 Oct 2022 18:22:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 12/23] ARM: dts: qcom: apq8064: drop amba device node
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-13-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-13-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> The separate amba device node doesn't add anything significant to the
> DT. The OF parsing code already creates ambda_device or platform_device
------------------------------------------/\ s/ambda/amba/

> depending on the compatibility lists. Drop the amba node and reorder
> sdcc and sdcc bam nodes according to node addresses.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-apq8064.dtsi | 131 +++++++++++++---------------
>   1 file changed, 62 insertions(+), 69 deletions(-)
> 

<snip>

With typo fixed:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
