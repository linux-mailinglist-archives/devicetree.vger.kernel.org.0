Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C5135750D0
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 16:30:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239056AbiGNOaA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 10:30:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238765AbiGNO35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 10:29:57 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DC1495C9EF
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1657808996;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=N8oBD289dGEOPLHJiPefuD87Ky4LKaAMPVE1HnT2THU=;
        b=a83KD6OyV5RSvikfgjBC/1e6P9Br+8pZ86dLqxREhPl4wBddEqhSO4TXqAHYokDTyTMfEK
        uCz8GSfJ3awNamsaEFJh1/MzW3N2vsruBcz5pSMYj6ZgJfst4iQqdckl2nauQFknovV7vT
        Y4A64+ZJUR61pOEgNlicE28WUP1h+3c=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-470-3C3tJOGFObex0FxJY0OS9w-1; Thu, 14 Jul 2022 10:29:46 -0400
X-MC-Unique: 3C3tJOGFObex0FxJY0OS9w-1
Received: by mail-qt1-f199.google.com with SMTP id x16-20020ac85f10000000b0031d3262f264so1594157qta.22
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=N8oBD289dGEOPLHJiPefuD87Ky4LKaAMPVE1HnT2THU=;
        b=v6FDk3uqo1vqeDGf0RDk0Ed2jHtEWmPycY/0T5mXSlMejEiRiUQWKvxC6BJhM7fjTW
         5jknfaliod6tZRTayRLoylYh0Q3XK3fOKPVJPZq1B0/sK1XGVJ4X+79S2u7fBwlAOxqM
         VJBiA0orIJVyTjjFXJ7BKcJDKhYWlv1wiAE35Yx0/hRRO1b4ea4KZnA77taDXm/cvWdo
         iDpJ0jmRdxiQE9hzY/Q1fyNwtxvlzdZcj9aVlZ8ZrqC3WisZh2UsohwYKXaYXxZjhXAx
         aQNh0rP2TlN8VQpoHifg2bOMTLS3rZZWxwMmX4L2tXCzUmyTJBfI/9mgCsCiP4Ico9j7
         Eqkg==
X-Gm-Message-State: AJIora9ssOtjBW6s33VBPdLR0uEi7LKAcfltoesoIRRtrKyfe6Ocjixm
        OQrKdBT4TNTRSLJLB3fUkjptdXtjbqk8DojPHT4Y+Py+QCKpO4LT/Ynd/BRFoNG3Dij0oqUTAH8
        foqPY54DlgS7kz48X6LmVkw==
X-Received: by 2002:a05:620a:490b:b0:6b5:50ba:df51 with SMTP id ed11-20020a05620a490b00b006b550badf51mr6154025qkb.53.1657808986444;
        Thu, 14 Jul 2022 07:29:46 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1t16Q/9bg8jc78Kiv5IS34JX5fMV5xULfn6e6fF+bl1rBRgdTiM9zrPFe4bMltLNPjW6XLFWQ==
X-Received: by 2002:a05:620a:490b:b0:6b5:50ba:df51 with SMTP id ed11-20020a05620a490b00b006b550badf51mr6154013qkb.53.1657808986204;
        Thu, 14 Jul 2022 07:29:46 -0700 (PDT)
Received: from xps13 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id v11-20020a05622a014b00b0031e99798d70sm1719199qtw.29.2022.07.14.07.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 07:29:45 -0700 (PDT)
Date:   Thu, 14 Jul 2022 10:29:44 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 3/8] dt-bindings: PCI: qcom: Add SA8540P to binding
Message-ID: <YtAoWOngodHMLY9L@xps13>
References: <20220714071348.6792-1-johan+linaro@kernel.org>
 <20220714071348.6792-4-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220714071348.6792-4-johan+linaro@kernel.org>
User-Agent: Mutt/2.2.6 (2022-06-05)
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 14, 2022 at 09:13:43AM +0200, Johan Hovold wrote:
> SA8540P is a new platform related to SC8280XP but which uses a single
> host interrupt for MSI routing.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Brian Masney <bmasney@redhat.com>

