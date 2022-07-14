Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB03D57489B
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:23:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238202AbiGNJXM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:23:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238164AbiGNJWu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:22:50 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9631474EE
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:21:13 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id e28so1815150lfj.4
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=v0i4BngGplk2bTz5VXLIN5dpkH5AFH1r2D74LwVjm8s=;
        b=jCSulb4PNhhMOOHOK64bq0VGtIugX35G0HT6umEYVhg4o+/YukaEyCGAZPpQGm3Wqf
         tKMJG6SeuHbL6/bJ0LJNtv86K2ZLUfy+2ILmPd659lTyivaISjnucq07oyLV/a1juUw3
         baoTd0rXkQPJjmuXBZlVR/Pz7F/JompiUprlhPovMoexLOfo+SAyukhy+mNdNX2gb5b6
         H2FtDCJ6ZyoYLzjGVmH1xi6AtjHQ1I17Jzre76yZ7G/0uqjgAqHugKFi/tOBVy6Lufop
         P1h5lAxM0Et0nIbS/JiT++Cq0YlLkT+h+jduefBiDpkkDLTrGog5NhcH8Me4Rgnl+sYp
         N4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=v0i4BngGplk2bTz5VXLIN5dpkH5AFH1r2D74LwVjm8s=;
        b=0d3zsva1SRmO0yC3Et0fw1h86YGriZMyMDYL/Y3IVg6x68B/KlHxf5+GneaE5N0asm
         pXvWc7qUxdCuUJUEwDadIYa1PkNSyOROWKAx06wOABG3tAmWsAXuyue8/gWttzcT0KAl
         LoYofFfUk1czoT8q8uYQCKu8gAhoZD1vRzJdwHYMk9Cv22Bgqq0p8kmOrIuI3EZIcFKC
         8O+YuxXSr6pqgDCFEYUi08I8rYFm8k7Jt7CqdzNj+zTYqjJ/WflxYy9oSggPZdk6z8Li
         Y2QpG7xAgSyMMR/yjRVydmsBCuxbwkpAqblCrrMJiqW6cGbCr9I2tnvCD6pkpH6fHdvb
         igpA==
X-Gm-Message-State: AJIora/+ITmesa5wIUcbTo1ltkYBW936x9bXhtAZjV9Jwe/WL3lKLlwy
        mrdn8TSO0fwOTXdAjEWlDyqWNg==
X-Google-Smtp-Source: AGRyM1vxTtNgElDgbwPA+GE0uhFmw4LJzUGrKZx0hrScAXEFpRG1xcl/p/HL08v+eRQEDHNJqQS9YQ==
X-Received: by 2002:a05:6512:b9f:b0:489:e00c:b226 with SMTP id b31-20020a0565120b9f00b00489e00cb226mr4713100lfv.498.1657790472211;
        Thu, 14 Jul 2022 02:21:12 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24359000000b00478fc420ea6sm254440lfl.244.2022.07.14.02.21.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:21:11 -0700 (PDT)
Message-ID: <d9b97a47-c938-b8d4-b056-bdac3e04aa16@linaro.org>
Date:   Thu, 14 Jul 2022 11:21:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 09/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 missing child node schema
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-10-johan+linaro@kernel.org>
 <1b13f115-381d-9d50-d3da-590cebf68ca4@linaro.org>
In-Reply-To: <1b13f115-381d-9d50-d3da-590cebf68ca4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2022 11:10, Krzysztof Kozlowski wrote:
> On 07/07/2022 15:47, Johan Hovold wrote:
>> Add the missing the description of the PHY-provider child nodes which
>> were ignored when converting to DT schema.
>>
>> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> 
> To ease the backport all of fixes should either be independent
> (preferred by some maintainers) or go to the beginning of the patchset.
> I am fine with both.

Ah, I see why it cannot be moved upfront or to separate patchset. Ignore
my comment.

Best regards,
Krzysztof
