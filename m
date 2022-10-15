Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF17D5FFAAC
	for <lists+devicetree@lfdr.de>; Sat, 15 Oct 2022 17:03:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbiJOPDj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Oct 2022 11:03:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiJOPDi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Oct 2022 11:03:38 -0400
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1060C5302B
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 08:03:36 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id df9so5005916qvb.9
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 08:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dupLLu0rDJmP6sNprGdvyzYPLrXQqVYFp1QhyvnLjEQ=;
        b=uMP2E6ocAAGHIbJ+JEJidVNejbo1Y3bez8qT225n0Gyh3QrCQmwimL81EuBt8xvJRB
         dzCOYtciQ7LJunOpNKRN+A4MCAPyMVhtOK/V8kw1XknBDAkPPeoc4i4DaC+r1dlOwhih
         kxsESGRvJuwSbym4Y/dkXWXc4FtJmN7xXu1GIRN5arLvCS5OERgBIZPfge4pV4Rja1/t
         ixgFBEAXG0SIA8+HKRFcaB8rsx/Plr9YNAUVQqTu4JBlCsc5JAP2/hjwVbhnoYE3JOzd
         ZAxO3r0GJOt4hChcmdX5BJRgLb7LdQotFZi9Itm+tQ1PZ2G+aX7JpHGMQdzKBy7575td
         ShNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dupLLu0rDJmP6sNprGdvyzYPLrXQqVYFp1QhyvnLjEQ=;
        b=ZUHRv1+zazgcypd6cL+Ba1HcvMEsVPy/VWnAWY0bglGQ/3PntCS3R2aEH25gel5q+V
         MgqCdjeaJc8jqBxlSL+KTZ9a/u3ZbwC/ydurMOuAxo4csKOvvnTHGdNjlQefw/j69wCP
         VV51docblpYRMdB/E/nbimoP2MLz/fWLqXlhTwcvwm/OujWX9UdOw8eZAgISHJK9lU6f
         985pcomRs0xCmFD0zWFDy8oB3bHFaq++epQbyvbXxbr5U1yCNG1NK1Az1hA3oHKRoBOs
         Zv722UBt4KIOQudtdLrFB1PksXP5wRsKbcXmZEy44ZX2K4LqqqlIRWTPHdNtQxx5Z9S0
         CaFw==
X-Gm-Message-State: ACrzQf3icptA8knK9OBqbwHlLIuAG76lYVUDyjoE9czVrgBiSHvh24bo
        6y5oQHpQDnTGRbToNiDBLTNG3A==
X-Google-Smtp-Source: AMsMyM6qvsxE3ALUza+9FbEKle1bSUFceZDUxSDpzD2NqUsBg5CVpKqCQ6aZNsqLkXgkl6yYZcIbyQ==
X-Received: by 2002:a05:6214:2aaa:b0:4b1:94e6:6788 with SMTP id js10-20020a0562142aaa00b004b194e66788mr2327470qvb.68.1665846215095;
        Sat, 15 Oct 2022 08:03:35 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9477:c2f0:ddea:ea08? ([2601:42:0:3450:9477:c2f0:ddea:ea08])
        by smtp.gmail.com with ESMTPSA id u9-20020ac80509000000b00399813f4d5bsm4030425qtg.72.2022.10.15.08.03.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Oct 2022 08:03:34 -0700 (PDT)
Message-ID: <10de50b8-9586-7952-e837-2c6d264a960d@linaro.org>
Date:   Sat, 15 Oct 2022 11:03:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 0/6] clk: qcom: Add clocks for the QDU1000 and QRU1000
 SoCs
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221014221011.7360-1-quic_molvera@quicinc.com>
 <eec2e9f5-5980-6a2e-53e5-71cc9a76f0a7@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <eec2e9f5-5980-6a2e-53e5-71cc9a76f0a7@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/10/2022 19:53, Melody Olvera wrote:
> 
> 
> On 10/14/2022 3:10 PM, Melody Olvera wrote:
>> This series adds the GCC, RPMh, and PDC clock support required for the
>> QDU1000 and QRU1000 SoCs along with the devicetree bindings for them.
>>
>> The Qualcomm Technologies, Inc. Distributed Unit 1000 and Radio Unit
>> 1000 are new SoCs meant for enabling Open RAN solutions. See more at
>> https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/qualcomm_5g_ran_platforms_product_brief.pdf
>>
>> This patchset is based on the YAML conversion patch [1] submitted already.
>>
>> [1] https://lore.kernel.org/r/20220103074348.6039-1-luca.weiss@fairphone.com
> Changes from V1:
> - fixed alphabetic sorting
> - moved clk-branch changes to a separate commit
> - revised binding

This must be in the cover letter, not as a reply.

Best regards,
Krzysztof

