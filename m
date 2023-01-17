Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E42A466DC96
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:36:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236790AbjAQLgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:36:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236427AbjAQLfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:35:13 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5CE72ED63
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:34:51 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id q8so10180378wmo.5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dOtBLD3BmLgDknVXuyyEcCcW1/Hd1Je1CK2xnN+N7dw=;
        b=cYUI7kWRPzfM40lojWFFssrJd1VDo6YKklCwcamCeCyXiA3+NVzwe8ZOkm4KEy3WTe
         axurq7RTBH1V7ZcYNnNjQvgDXg9/WvaUF6oEPFUepxx7lq22TwgoTbFyFp+DrRr+jCKl
         722WsWqW/KOnTk66XvbAbEMiMw+zcCBzQgjuNRKuUqWlH91rYdefYViZ4QyqBic7HVz5
         BqieyhK/NBMyb5NdjDDzBzfK9Fi0DwRdtoFvzR9hXY22idTthf+DA36wka7Xg5lyl5em
         +5wqtcx25p61NkuMlcRyMGMV1FoZODuVlO0aQYzYPUVZZ8GupRfmLeM9pU2jDCEfIzYU
         KKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dOtBLD3BmLgDknVXuyyEcCcW1/Hd1Je1CK2xnN+N7dw=;
        b=X8HuJbOb7ZeWzHLJ4WD7h3+bnFVZrTCLcERKeC+UrjXKqGvhCxsPuUFDpjBcXuBaOL
         b2AfewBGDpKjGx2+zKrDrrB+wCoQBs8D+yUSD4LAoYdMhugRsvW7Sptd+b0SnVXJMSU0
         zMbfG3agd5zhEgCFQuSxqdibZc4UpsM13EMS35k/YorgsdirMc8flZVO3d+EjuYEbsr9
         wqHfioKnTHXKcTnD3BHthOWzG18EqjW+IhNxQZEw6yNaG60g65aesDD9yINkL7wp8cwh
         3bhTl17HBUt6hpA0FOPyZ0EiJb2FR4ybPaqsmRIzM29yVYdlUHSvxKtSHyJzl/NB0Wpz
         k78g==
X-Gm-Message-State: AFqh2kpQRakVOdW4E9TuWcXQfdNJcCIFRE9U2dY4BS5ZIGXFluUuASKN
        CtiiYtyv09pPD9R8860X0urBAg==
X-Google-Smtp-Source: AMrXdXs/NQbLxmf/uwz6dB7ADOPujitc5iXKTWdolbLeC3bKZbaIWPODSElDBtILNMq9agMjrJLHAw==
X-Received: by 2002:a05:600c:1604:b0:3c6:e61e:ae74 with SMTP id m4-20020a05600c160400b003c6e61eae74mr2796831wmn.4.1673955290539;
        Tue, 17 Jan 2023 03:34:50 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c469000b003d9b87296a9sm44901275wmo.25.2023.01.17.03.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:34:50 -0800 (PST)
Message-ID: <5074b463-864a-1e76-44a9-67ce95d4f1ab@linaro.org>
Date:   Tue, 17 Jan 2023 12:34:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/4] dt-bindings: mailbox: qcom: add #clock-cells to
 msm8996 example
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230113090739.45805-1-dmitry.baryshkov@linaro.org>
 <20230113090739.45805-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230113090739.45805-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2023 10:07, Dmitry Baryshkov wrote:
> Add the #clock-cells property to the MSM8996 example, as the APCS block
> is going to provide the `sys_apcs_aux' clock to the consumers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

