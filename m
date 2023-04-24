Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BBDA6ECF95
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 15:50:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232864AbjDXNt5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 09:49:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232942AbjDXNt0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 09:49:26 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2146A5E4
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 06:48:54 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f1950f569eso20228155e9.2
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 06:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682344131; x=1684936131;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XqANcJGhDQ25M/IWMKz8eDStyZUXzuPnfRXSZoU//+c=;
        b=xZcHO8GyGzRTPD747BQrcz2zbTYMnVou0BMHLN7q60lUS9HRovlKiXD5WGgScsLmr2
         n4FPtn/Dwajil5UaBSH+bTQ/bk4KFNFlS9SOzzaPKcQ1+XxD/or6P+9EstG0j2O3LXMp
         MwXjhWBke0uZLpL3x+fRvu0ECRkPWnRvoaMC6HyK1nO1w8hD9jiBEs0whyj1hN52TWer
         5L/csQUt0yomO6OlFRqu5XYveBw0XE2y+/NzXYVOCiKv/LUUKribcSgxCIMSuHwUK92B
         3+t6Hi/e8l/qCmV/AVXryN3W32xrI1+TKOR9qkr76JvGeKo1jgn5KEvUuIcN9SyH0DZ/
         ONvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682344131; x=1684936131;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XqANcJGhDQ25M/IWMKz8eDStyZUXzuPnfRXSZoU//+c=;
        b=TLr3FjhCJt1shl/Wba4jIsPcO1UNCqX8sL4POTLXeRuBfddxaGR2rzMKt7VmKKq6gw
         9FdH1HlDYD/0+JGmJqEVd3tnRDXqUCWUgZxrostFVghyyFQuWmh4t8kO5N6ryv/0eBj8
         9wepA3P1PtMZLgHyLzPFTDecOarNVMnGkYUzfh8Nu8FRB7loILMHhVPNLfxv25lAX0tu
         Nd6q/r0cJx7BQ9/yeDhMMFmg0ij+wjqS8fFp+lOe6oyhNq6nepooQW217WfYlsLZGoRF
         xbnIbC2F9VPlO9R/T297Y121omDjgZl5kx7OTzkkz0LPrq9qb2d5qDFzfOik1BZwtWtp
         N5QQ==
X-Gm-Message-State: AAQBX9cg/xed+tEzyYJ9bIzjw7pqi9cxaFLK72Up6vv4K8woLrySpC8H
        6OKQj3MldWf7VZJlDYyNDo+45g==
X-Google-Smtp-Source: AKy350b+XIBsEARtQuxURrcCS/5P3tB1xKkwtb3Crp9CCJ/46SuZlz73bF1xzaWnQtA9aHQui6e1zw==
X-Received: by 2002:a1c:f601:0:b0:3f1:7331:38b1 with SMTP id w1-20020a1cf601000000b003f1733138b1mr7633801wmc.14.1682344131435;
        Mon, 24 Apr 2023 06:48:51 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e22-20020a5d5956000000b003012030a0c6sm10840246wri.18.2023.04.24.06.48.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 06:48:50 -0700 (PDT)
Message-ID: <c893f0c6-48c5-bf02-3d1e-cffe3d257659@linaro.org>
Date:   Mon, 24 Apr 2023 14:48:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 13/14] usb: typec: qcom: Add Qualcomm PMIC TCPM support
Content-Language: en-US
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     linux@roeck-us.net, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        caleb.connolly@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
 <20230413113438.1577658-14-bryan.odonoghue@linaro.org>
 <ZEZ/6Y4dNmcZ7aHo@kuha.fi.intel.com>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ZEZ/6Y4dNmcZ7aHo@kuha.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2023 14:11, Heikki Krogerus wrote:
> I think you need to rewrite the commit message - you still have that
> third driver in there - but otherwise I don't have any more comments.
> I hope Guenter has time to check this. In any case, FWIW:
> 
> Acked-by: Heikki Krogerus<heikki.krogerus@linux.intel.com>

appreciated

---
bod
