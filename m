Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8830C56674B
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 12:03:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230422AbiGEKDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 06:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232038AbiGEKDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 06:03:18 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE7E213E2A
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 03:03:16 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id z21so19619047lfb.12
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 03:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=isi6a7fVq8cWarGbVpE2RdlMD/1CV/69s/y//iHVXgs=;
        b=lkTAbTZnFM/J04wdmLCi+WJEQrC9Kdq8gMF+MXDyk+9UAJN/1oRub4OJC3TaQPVMXe
         V0YpeC9wmJc7NPXdjK1YrsRCMe+XmEQbRX4SDZ2Me5MDOxiiTSJhTjXL+NNTpSGaj7JC
         DUx866L0jqXOJ9xStlA3wyt9lDDlb6eT5wOMQEOg8VCz3JaTSGy7CyxXgy/kxghmuWWh
         DoZSLBOKZcaNQHWaF9k2XSBVTvujdCRZOAGWiwmGnpNLYWZcKrhfKTwALDaYsq6haRQn
         PwEWvzW5kr74bRmASWAlOKHY8dpBQA1Qm4709e2A/VVJfAZh652maYxEWfCxUf7zV+AW
         S8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=isi6a7fVq8cWarGbVpE2RdlMD/1CV/69s/y//iHVXgs=;
        b=2r255UImefnZQ9unfOkG5Ak0zzIe72NRzm0VqZYVXvZx3R6bMGW2BtMwP5C69D2M4Z
         QzwWz8xi4QuD5MMfuo09czUMszYAJWu6dSoTrca6hzVAaVn2ycbSrnlPphSdtIHV+UjN
         8AEzfRfEywfYcf3cRZS/F6fwae/8lDr1gDsuJbMOtSjPajKyzKllKL8jxccfCUkNjTn0
         8Ls4bfVj6Zv2nsMiyurRx/jTu4+p7MQM+nIljPCK9o3V0EQVg7o9k6SSrqTleZ0EECm3
         Q56v4lS7yXrDCwEpctE7z7d65N24mGVNWR7aJ9o9vJZXHZ7rtx863CXfZUFgy8KWo3A2
         0oZw==
X-Gm-Message-State: AJIora8cMd6ixOKUrBehTCHljPzF61tO/tXQvNgsOunuD/IC8O9D+trs
        aIEKjbeBuM3OWefpiiy4A/8zng==
X-Google-Smtp-Source: AGRyM1t/CCm8GtXgy4LjtshxePwKKSBsv2Rl+OeKnOAvbq3eR7yiOZ0pCoxKokhIen4sDGJEJr3WCA==
X-Received: by 2002:a05:6512:281d:b0:47f:ac1c:fcf5 with SMTP id cf29-20020a056512281d00b0047fac1cfcf5mr22921572lfb.197.1657015395138;
        Tue, 05 Jul 2022 03:03:15 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id o4-20020a056512050400b004785b66a9a4sm1923266lfb.126.2022.07.05.03.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:03:14 -0700 (PDT)
Message-ID: <f8a9e839-4a0c-238b-802e-b289e5a1e9b5@linaro.org>
Date:   Tue, 5 Jul 2022 12:03:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 04/43] dt-bindings: phy: qcom,qmp: clean up example
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-5-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-5-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 11:42, Johan Hovold wrote:
> Clean up the example node somewhat by grouping consumer and provider
> properties in the child node.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
