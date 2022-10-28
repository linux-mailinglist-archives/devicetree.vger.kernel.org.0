Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D66B6107C5
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 04:15:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235819AbiJ1CPu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 22:15:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235495AbiJ1CPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 22:15:49 -0400
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB6D226C
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:15:48 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id o8so3215894qvw.5
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vDQd0R4rcR0/FXPseJDxEhDTM5AtkC9lRAa3LdKXaSk=;
        b=LmDCFy1tXYjyvA0wy/YnmeJMFvgVI7Afo9lZzSpluX899cAbmH7muXYq/r1EHnRZg2
         YnLntgOHKsbdjbiLq49yXbMyb6NM+2UyCBMivZWexjjxBuKJxtk8TonWab/Gv9Z1vrmm
         tgVNln2AO0DiW2U/SKMR4o1FX37uNNVnY8dHqhX/7cCJR9/ioBEWrQe+qvkkMKoJAfis
         uUMxFYlzz2GXSCmDmDF3ABevQ52p4R17GL+yqQ6DEvuDonKirHc3UiN+FahklJdf/eTN
         n4i64gLzGDJzkZBhLkb0FwThI23NBTf97lODoB/LzmQgGxpK5qayH+q7CeK9zvVtOSGj
         H9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vDQd0R4rcR0/FXPseJDxEhDTM5AtkC9lRAa3LdKXaSk=;
        b=si18y/ICXJWheclo19naxtxgE7sGHCZusy092uvEkdxWSC2YUsfBHFcJGgUcmMgC2V
         htWujg37vzaw37zYfFFUNVOZIjQldNKjbYzLB2Q7DuUkekPkLwCfbTRv66FOj119TywB
         PpgSPn6wGJh6sb1MF5a08w+yvAcrLfXj4u+XD5NynD2ClYquVIiB8lkBYB+mvEWqeDVb
         8nl6b0SEXhXZe4usenbCm28DtXo85gAllB9+LX80FAEG6CmoL5PXfet9N362pJeUD9YA
         cZB2p9f7/OMYMIl9olyQtRmdNNtHy5MpKBXUc27NPCkis7/E87ioF5Ewpv5Im1QB+L2s
         P2Lw==
X-Gm-Message-State: ACrzQf12FJnnNVkhu9r2FRPfMOdmY+QxiWRsHDpVcKbgbEozDDYEffOr
        ouxT/ctzhZRe/t+QHi3Fxb5jbw==
X-Google-Smtp-Source: AMsMyM6SCC/rxKrC2uDa16vuAPQKi5iVfXCtsMjGk5wwgTYw0H9lNcVYDyzkZ1rDhX+IapJxjaDMcA==
X-Received: by 2002:a0c:e803:0:b0:4bb:a881:e7bd with SMTP id y3-20020a0ce803000000b004bba881e7bdmr3651911qvn.91.1666923348098;
        Thu, 27 Oct 2022 19:15:48 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id cj21-20020a05622a259500b003a4ec43f2b5sm1733027qtb.72.2022.10.27.19.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:15:47 -0700 (PDT)
Message-ID: <c9940701-8486-5a0c-4c7d-9c85b9460a7f@linaro.org>
Date:   Thu, 27 Oct 2022 22:15:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 11/13] dt-bindings: phy: qcom,qmp-usb: fix sc8280xp
 binding
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-12-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024100632.20549-12-johan+linaro@kernel.org>
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

On 24/10/2022 06:06, Johan Hovold wrote:
> The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> PHY binding which provided multiple PHYs per IP block and these in turn
> were described by child nodes.
> 
> The QMP USB PHY block only provide a single PHY and the remnant child
> node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 

(...)

>      then:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> new file mode 100644
> index 000000000000..95ee81d782f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml

Filename based on compatible, so in this case
"qcom,sc8280xp-qmp-usb3-uni-phy.yaml", unless it's like the PCI case?


Best regards,
Krzysztof

