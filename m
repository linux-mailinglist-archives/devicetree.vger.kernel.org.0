Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C665B714AA4
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 15:48:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229915AbjE2Nso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 09:48:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjE2Nsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 09:48:43 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14E50A7
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:48:42 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-30ac4e7f37bso1945090f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685368120; x=1687960120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ygh+oO9nvPS/69geqyJq74mEoRjomikOCE/0QvmTjsA=;
        b=D0VISu+wsAdynfkSb2W4dB8UkYlgKXgWgEPl2APo3VZUDMtI/yXDLY7RT0TmVleKeA
         LW26C7nbcYgRPgMIncmq3rIBMKgYW/EdgwjDZGKnBHZEpd3NruWDMrhaqCEjVIdRBe8J
         NrNLuZJjSQJzL6jttoz6hOC+5lOK9L9LbQOyAqy9KC8u9ghw+YpUR6NaTLpxiCfSdBii
         5Iz3js23lR9HalSHFmhodSEI7ghS6Bd1oyA9sek4vRWh+5JiTUpa5nluSGrsxhiXm7y5
         i12WnopFVxLpEmGVO0C9Gl87tzzBGf8xul2pjKH8Y0DVWB+3Yb0juRyBRHIe7QLPWIt9
         FXVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685368120; x=1687960120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ygh+oO9nvPS/69geqyJq74mEoRjomikOCE/0QvmTjsA=;
        b=TcjLI09xi4mA6okvdjrNNamvSBk6YLmoDVp4Bo2oxaXJUasZuHt+jH5hJzv1Xa8oIx
         jxJoCdUz7psr+Hh0y6xnlxcW2WSPN+Kda8koykzRtJZaIl+x2dtSRvuueZhK2/aiTbAp
         lgbVwqa1TW9gLuBpNwX0E/1xOX7tc3mHYmkR3h6JmFJk6L8DgSpVfPbsWidpjQmKTo0+
         1HnlEhCkm9ixrh49luBd79eKmNOVAoOmfgLcaN4SMiEXqBsAglqegZva3j+Scm7S5iUD
         9Dc5PPUC9oZpRFJhtG6FCKam9y/UBtlFafhmewi1GNPRqS9pAh67RXF/6bIWQe814Fqz
         eiyw==
X-Gm-Message-State: AC+VfDxbPCI3foR1JPig4fmE7l1BhkT9OycAkNyNDyE5g/bZWcX/AcCl
        0M0brr5TQGUIeKAvIF3ejRa2dA==
X-Google-Smtp-Source: ACHHUZ7qm1seiYs9z6EiSNYUPrDaF5K9vTYnlVYkOH7qP+ndiO5rmy3QzgvFpVknNyIr22KyKsw6Cw==
X-Received: by 2002:adf:e4cf:0:b0:306:31fb:1c3e with SMTP id v15-20020adfe4cf000000b0030631fb1c3emr8769862wrm.26.1685368120594;
        Mon, 29 May 2023 06:48:40 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id x11-20020a5d490b000000b003063a92bbf5sm10820wrq.70.2023.05.29.06.48.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 May 2023 06:48:40 -0700 (PDT)
Message-ID: <eca51371-3ff3-a126-bab6-175becf9624c@linaro.org>
Date:   Mon, 29 May 2023 14:48:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 6/6] arm64: dts: qcom: msm8916: Move aliases to boards
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230525-msm8916-labels-v1-0-bec0f5fb46fb@gerhold.net>
 <20230525-msm8916-labels-v1-6-bec0f5fb46fb@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230525-msm8916-labels-v1-6-bec0f5fb46fb@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/05/2023 13:47, Stephan Gerhold wrote:
> MSM8939 has the aliases defined separately for each board (because
> there could be (theoretically) a board where the slots are numbered
> differently. To make MSM8916 and MSM8939 more consistent do the same
> for all MSM8916 boards and move aliases there.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

