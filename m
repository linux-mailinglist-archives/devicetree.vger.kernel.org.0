Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BA265B2032
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:12:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232240AbiIHOMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:12:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232281AbiIHOMV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:12:21 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0308A4B0D
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:12:19 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id z23so20089546ljk.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=zuWG/d7m1YULa3TdAQzS8lnqZjDfPLiCQckEvOH8US8=;
        b=WKnkZMzwLa2BgQKZ9wFBU2TBNvCiN1viwqxSXc6aFW0V5VLcpCB5rIO0ytcnvDhAaV
         cfo9hiPxrTvhQDjh57MpQPDYo21HSSo2V00kz/GXmDssnnpYaAWRIN/ZkT6bQkuncs/u
         9vS7Wnj/W1a5s2/p5P4OcQaWmVQoh78sJ+SNcfAVuntf6GcgVFtd0HkzkCTp6m4iyrD6
         h7XRXb8ub5iWWedbVUiBRnPbvB3bS8dJQGpwCn5du/VaD/a4kA+iLE/bLMfI5T7f05kF
         G5i1z87lySlCNiI+DgWTpiHBJgAXa4VFAidqraDSJ7Df+Pnwq3IYX7KgO5h3BqruvbYx
         S4MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=zuWG/d7m1YULa3TdAQzS8lnqZjDfPLiCQckEvOH8US8=;
        b=s78Tqiv8oe6KR7u2oxzEDsdJUAa9gbNZ5NSF00Y6i2HfXcc9Iy3C8+XAiX4E49uzn+
         Bj0XlrYYHIhsXMlzH9QVSE3TYxN37oKn3EsRttIGQSjZzVxJ9/8yn5VPibDWS8D5r9GE
         Tahrwyis7XWRvztxtXOSW7SC41lOWpwJg6+ryE9Hxuz+Q3qcnpukpAVHOnE1V42NawB3
         8fdkqkUoKQI+t7yHsoC7GAEmnkGSeX5HUZ61SO9KXOgZsFXh4+JTy144iKHTmBAx/k5z
         4tuejdW9qk0kCGmzTo98JxfrjqwIdXUlTbrsOcKBNvmQ6FXQ8ejrcGdTd8NW4zFD4n8K
         Lk5w==
X-Gm-Message-State: ACgBeo1Kms/NN3F8zR+4B2PaDpkKLLcYRoxXYCm11yQoJXamssXrrdB1
        4dU/JEigimnSr0GvWsOd1Xe6yA==
X-Google-Smtp-Source: AA6agR4XqxhnB5kEGYBxY3bwF86u4R8YDynGdzfS3yfr451/FfcEzmF2jEs0IdatIbSxMjI2bOk77Q==
X-Received: by 2002:a2e:2f03:0:b0:261:cb0e:c329 with SMTP id v3-20020a2e2f03000000b00261cb0ec329mr2376867ljv.106.1662646338014;
        Thu, 08 Sep 2022 07:12:18 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c39-20020a05651223a700b0049497a2b288sm295954lfv.58.2022.09.08.07.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:12:17 -0700 (PDT)
Message-ID: <5ea23601-d2c9-cd02-0ed6-c8ca0aa6a000@linaro.org>
Date:   Thu, 8 Sep 2022 16:12:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 02/11] ARM: dts: qcom: apq8064: Drop redundant phy-names
 from DSI controller
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
 <20220907000105.786265-3-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907000105.786265-3-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 02:00, Bryan O'Donoghue wrote:
> phy-names has been marked deprecated. Remove it from the apq8064 DSI
> controller block.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
