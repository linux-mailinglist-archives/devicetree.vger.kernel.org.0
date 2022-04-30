Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0E42515E73
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 16:54:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358232AbiD3O5q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 10:57:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242132AbiD3O5p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 10:57:45 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A955D50B1B
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 07:54:23 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id l18so20376015ejc.7
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 07:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dWEd/3Nb8Itqg/tkRZgxGxUockibAnTciuG63bql54k=;
        b=d/UySQ4Cy6RXYaosrLS19vyorEgZ2IWJtJ79R3CH69wMgohLp+v3oQoBy269ff9lEE
         nG/pMy6GMo9nngY9QlisyBNq/X/dOFJbPjkrpykreKKv0D9UeZvey2ch6aUC+Dz8VRbi
         aJB86ZTsYQZvQUlPsHn1iFI/UpI287KSq+cdxtYbvQMPMgh250DIBXFRuhKex/em9+4h
         LaZpqadMABxMLJhe6iQ9jFemV/xKIpbdeyWSQ5/MT/K+2sUvBORAZ2mz9KF37VUIFXS5
         i79gGYTgymoGOyGv2Uutu2xNWJspRVRxJcgpPRN4IG0AalqrQEFV5wxmxFNHE7vos3Tr
         K02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dWEd/3Nb8Itqg/tkRZgxGxUockibAnTciuG63bql54k=;
        b=jbE4vCElwytSkAuF3QHOpz8+h/vnuV6GaVITQl2orD98QhhY28+w5+bOCtR44rYy7V
         fc1suxneptWDiwI0jMgXAwesAh8oiSx71JZMb9JodoxZzTEl0/5ot4WNyKxwR3v5fh+P
         xzVbcLrH1LJq1aoelMRXUJW7Wzl/EQ35SJvSo4WR4XlJVBQFznJqqhPYVHaP0UegsdlU
         W7/gz/rmbG2JKG/3ohfPq2uYEOm+0TVmVG5oBgGj8kFa4S/2HkpE4ZJp0AskJbX/VyKl
         h23MRWozQPs/UU2QqFXdMS/K2nkJBmJbCJYmx0sVH1dVQOie+vLxDkWG520gs8rD36RY
         33UQ==
X-Gm-Message-State: AOAM531QmuI16LT5eg8MAezs1A4E0J6mJM+Mk8i6t+N4j3N4qI7u0yYV
        8wpa8BZKjRBFxvD04uJccz6R3g==
X-Google-Smtp-Source: ABdhPJyxP22ZX1yTun8Doyf2QTaUGaMugN0I6TjhJMr0c/d74Bak0nsBk+dqYlWLcpkAPwMntTqW2w==
X-Received: by 2002:a17:907:7fa8:b0:6f3:e975:abfa with SMTP id qk40-20020a1709077fa800b006f3e975abfamr4002499ejc.86.1651330462301;
        Sat, 30 Apr 2022 07:54:22 -0700 (PDT)
Received: from [192.168.0.180] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a25-20020a056402169900b0042617ba63c8sm4223267edv.82.2022.04.30.07.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Apr 2022 07:54:21 -0700 (PDT)
Message-ID: <8ca89d2b-e3cd-8565-aba7-e7b0215664f2@linaro.org>
Date:   Sat, 30 Apr 2022 16:54:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 6/7] dt-bindings: PCI: qcom: Support additional MSI
 interrupts
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20220429214250.3728510-1-dmitry.baryshkov@linaro.org>
 <20220429214250.3728510-7-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220429214250.3728510-7-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/04/2022 23:42, Dmitry Baryshkov wrote:
> On Qualcomm platforms each group of 32 MSI vectors is routed to the
> separate GIC interrupt. Document mapping of additional interrupts.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
