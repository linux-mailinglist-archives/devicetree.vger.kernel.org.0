Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDDAF690FA2
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 18:56:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbjBIR4I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 12:56:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229853AbjBIR4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 12:56:07 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98B545CBCC
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 09:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675965318;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=cfSndtfzj6buNB/Mqo3dLMDWEWOsRwTKIh0xVw3PscQ=;
        b=b83b5LuR7rtTIpMLI/9P6m/cUs4Pdlx+pynw76+l5kJvoQ/Ja+/DLaebno0eeX8OeHnV2p
        qVXBuG920+H54crC3NQFissCwhI89mvACUK8xJFM8FlhFlFQ+nwSZ7k1pvoF9MTOSblHu6
        ytzPwjedyn5KxXsZwzokV3FW2kcJZvI=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-113-liiGGxeJOtClTqC7LnHrqw-1; Thu, 09 Feb 2023 12:55:17 -0500
X-MC-Unique: liiGGxeJOtClTqC7LnHrqw-1
Received: by mail-qv1-f71.google.com with SMTP id ec11-20020ad44e6b000000b0056c2005684aso1657360qvb.23
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 09:55:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cfSndtfzj6buNB/Mqo3dLMDWEWOsRwTKIh0xVw3PscQ=;
        b=y1RrQknJlZkiDyHi5ZtxCOgd9qgsWnwB+efqETggM6kzYVrSrDwdlZiNyt29Ix7CpZ
         25/ev6NMt8mMPtAQ0062VQMx4g3O1Rt6NtW0/x1/bTyvK7IPm2+DRSIeQ/hRZbcKX6q6
         jQwo6Tl2QeoZNzICIoxzLq38Gut9o+9QH4CJgZ6DTB+lVf4s6BGkN+ZOh3lU/ftaQBp4
         sAQ/i8iKhTRdTybOzO6rxnKzrUw8HHAV3GRs+H8Hffz+h4O+4T8OvAITX2Jz3FWyVTzh
         MxC1tgdUr5/yua6aix0U49710iCm7G6oHO+Ha7mYmCg4b1wbdGiEahfaequldxAVo8fw
         TG4g==
X-Gm-Message-State: AO0yUKWgTe1hkhxZQManZDmNW+7H1/rQJybfGvomcU+1rKba1/xB3GET
        CKTKagyNyewy55kpmk1PywOo6at4nGcn1j/5i0gFa76A3shVCQAKexl5/4kwApLxDsOqVVRWq00
        iEbCdBrlhU7ph/Xcm4+09LA==
X-Received: by 2002:a05:6214:519e:b0:53d:ab5f:d46f with SMTP id kl30-20020a056214519e00b0053dab5fd46fmr18023197qvb.44.1675965317062;
        Thu, 09 Feb 2023 09:55:17 -0800 (PST)
X-Google-Smtp-Source: AK7set/J1GkXSNiF1pdtEd7Yj6teE0aUrr3u6Q9rshfIv82y92vJxVQqykEMC3O2ahqTXrW6Ym26wA==
X-Received: by 2002:a05:6214:519e:b0:53d:ab5f:d46f with SMTP id kl30-20020a056214519e00b0053dab5fd46fmr18023173qvb.44.1675965316834;
        Thu, 09 Feb 2023 09:55:16 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id t185-20020a37aac2000000b0071eddd3bebbsm1799087qke.81.2023.02.09.09.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 09:55:16 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:55:15 -0500
From:   Eric Chanudet <echanude@redhat.com>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: qcom: add the SoC ID for SA8775P
Message-ID: <20230209175515.xrebz5edmsi4xkzv@echanude>
References: <20230209095753.447347-1-brgl@bgdev.pl>
 <20230209095753.447347-3-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230209095753.447347-3-brgl@bgdev.pl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 09, 2023 at 10:57:52AM +0100, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the SoC ID entry for SA8775P.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  include/dt-bindings/arm/qcom,ids.h | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Eric Chanudet <echanude@redhat.com>
Tested-by: Eric Chanudet <echanude@redhat.com>

-- 
Eric Chanudet

