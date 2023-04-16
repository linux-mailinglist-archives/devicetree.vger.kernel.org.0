Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E83E06E3AD8
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 19:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjDPRup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 13:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229666AbjDPRup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 13:50:45 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0F9E271B
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 10:50:43 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id ud9so58265753ejc.7
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 10:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681667442; x=1684259442;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ArQgtD3XSqkYnGRgmzJbWKvwHilfmpOzjhORldjiTRk=;
        b=pjh6Cixrsx8Hh512bQNyQ6zvHY998f+4aIajXuk5EHdzmo5iT6u3GlXVbpaMV38yos
         YpFwr+V5uPby5XRdL3RkmIfpnFq2AWq7G6UZ7ia+8RncjR9w9Xan+3GKbSZ8m4Baox1U
         HNHJzW+OH4DoL6PAGYseKkrKSbr/Px4FVq/kHeg8jB2uXJ0YVMLf3qLjeXI9IZq7qqmE
         tGihYj7Lko1JPhUxqH6jN9ilObc9x6emMwwv4Xf9kRfX/EbhI8uDU8f7SbdaBt67s3MS
         A21fcWQsFMWRwq4fyiYIIr4fd19bKIXGRTXZyH077fSLsSf1b69G0GR5Q/3qVLwYu9Q9
         hImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681667442; x=1684259442;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ArQgtD3XSqkYnGRgmzJbWKvwHilfmpOzjhORldjiTRk=;
        b=MNjXwyvjUi7MNi0HsP2cO4r3+Viuz9GJL5lS3npb1TelFL+o5LKt0ktMwtBIJMi+ZP
         DrNLv3j53HROz6/JC7DxAbgtnWdFhDv8AN9KLBe6X/+IpGmhYLyJ3Aq9SzFAMdLhzAVl
         aCaLVudIRhEJlZeRaj+02/tGi/XqEAnG2VcHTp4+J1BhygFa/gbA+AzLLaYXMm0m/1eV
         IGl1tNvtKFgkiGUezwbeJoBQ28yz6HnXJts3nuArf/A3Fy4gFPC0aiUk63kvyJdA2UrO
         MaL+Wat3DEBaHNNuH5tRdh0jFu+dfaslIVFq40V7bvC9vscK85/NBdRIjT4h1R2RSUn5
         MeMg==
X-Gm-Message-State: AAQBX9c501xGK5qWHQMsztchQ1rapI1lRHk+MjR/KLPfnIfpFhpLSGcQ
        opNjtPkR0GJzFPHjOKvdPdQcVw==
X-Google-Smtp-Source: AKy350bi5SNwJCsq1S0JAPIIz20WwvLuMxekPOjUVrH+1IolwM3A1B+tOdwmSN/EadbYy+1HMOa5vA==
X-Received: by 2002:a17:906:52d6:b0:931:1e69:e1da with SMTP id w22-20020a17090652d600b009311e69e1damr4736891ejn.7.1681667442258;
        Sun, 16 Apr 2023 10:50:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id gn42-20020a1709070d2a00b00930525d89e2sm5397950ejc.89.2023.04.16.10.50.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 10:50:41 -0700 (PDT)
Message-ID: <4c453fdf-0405-518c-0e2d-50cabc61bacd@linaro.org>
Date:   Sun, 16 Apr 2023 19:50:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v5 06/14] dt-bindings: mfd: qcom,spmi-pmic: Add typec to
 SPMI device types
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
 <20230413113438.1577658-7-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230413113438.1577658-7-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2023 13:34, Bryan O'Donoghue wrote:
> Add the PMIC Type-C port driver to the list of devices.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

This depends on previous patch, so should go together. You should
clearly communicate dependencies/merging in cover letter. At the top of
it, so maintainers will know they *cannot* pick it up independently.

Best regards,
Krzysztof

