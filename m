Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A687E577FD0
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 12:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234393AbiGRKhW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 06:37:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234231AbiGRKhV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 06:37:21 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A2AC1CB2D
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 03:37:19 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a9so18532208lfk.11
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 03:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lzQLkPTfvNbH2Ekd5nGQ4GB1gD43WtlNltAXIufb7NY=;
        b=qP+3tadDGFNoCGxGdGNvwXBOGPmA4WumQV02MqFXGgYc/A9Dv4Tfazte19Pr6TXE3G
         5K1qafl3Vps5U/T6ohBl8iiBAv3W9gpoP5G7WU+FJ5bLIq03vqvMZIC5K/kseq5dYVYr
         GkZjn3EsNM04ZFxp5MxCb1NovNRoTIq31B2U/oYsF8QFy7FdLgu25u6agHEdq+T6kjUh
         pktAbZ28nhD6Ob7TjmSrZAK40t5zLReZdUveFWYDjig2d3uFNeZHaYqKCRdsgNKvvbfp
         roOmaiWmWk33M6Y7qNE7A14cOls2iofrZX9m29DkEj7LKjtMf9Jx8kySlNTncKnJjsuo
         PDgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lzQLkPTfvNbH2Ekd5nGQ4GB1gD43WtlNltAXIufb7NY=;
        b=IIiTzVsIOpfKl6X0kb0Gph3W2FX2iYKwXF7ZN+8J+QC7kSmDyoKs1PhIVlHlliXZQP
         ItCtZHJAVIoep93HOB5Zhqp1D4JzGDPFcopthHdnvFieftUefqqweS3hxHPP1NMP5hmC
         RqgisCShA1WYV+eX62fO3Z1hC+R+5yd2SFmLEUwokLFHNEhJhaVI541mEXDiTLUDPB1G
         ycW20gHx/Czhjbv6Yxeit9KvWoYVDJ63+cudoNeTAJWO8uvs/DtAhumbidttKaNMXNl8
         o/yGfh2/tbpqTQFqLhV8spHjxRwh7LGZcMIEvPsbN85EKdHWdC/HWGgPQIXqTmkJM8q6
         yUgQ==
X-Gm-Message-State: AJIora+D6xZsMm7zNtNci34/sPsJMtOEzDy+nQQIh9GHhwJQSEs1DLul
        9waymLZMjbLl37vTaz/zGQj35H8AJtKczg==
X-Google-Smtp-Source: AGRyM1tzH3f6zTjXA12E40YBpxBzHOvn5i87VWfv7vjohs83V854inxJLLH2AflwCTU6SU7hvLv67A==
X-Received: by 2002:a19:7017:0:b0:486:5af9:5c2b with SMTP id h23-20020a197017000000b004865af95c2bmr13613668lfc.283.1658140637940;
        Mon, 18 Jul 2022 03:37:17 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a20-20020ac25214000000b004846e25aeddsm2544588lfl.149.2022.07.18.03.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 03:37:17 -0700 (PDT)
Message-ID: <d1324be8-4516-2357-8554-877026398d7a@linaro.org>
Date:   Mon, 18 Jul 2022 13:37:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 6/8] PCI: qcom: Make all optional clocks optional
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
References: <20220714071348.6792-1-johan+linaro@kernel.org>
 <20220714071348.6792-7-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220714071348.6792-7-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2022 10:13, Johan Hovold wrote:
> The kernel is not a devicetree validator and does not need to re-encode
> information which is already available in the devicetree.
> 
> This is specifically true for the optional PCIe clocks, some of which
> are really interconnect clocks.
> 
> Treat also the 2.7.0 optional clocks as truly optional instead of
> maintaining a list of clocks per compatible (including two compatible
> strings for the two identical controllers on sm8450) just to validate
> the devicetree.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>-- 
With best wishes
Dmitry
