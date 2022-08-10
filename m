Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0621B58EE94
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 16:41:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbiHJOka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 10:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232631AbiHJOkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 10:40:06 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BCBD5A3D8
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 07:40:04 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id r17so21490465lfm.11
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 07:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=L/tgf+Z48s9Th7NBCKhEbFwg777iQ/j64Fh3Yh4ebMo=;
        b=A9UCf83dopJOUiY/S85JlRChGLQgcu+YYkKuAqbulaDo6uJ6dzdQHMyBtb4ehsX3Wq
         LZVdNkBsIT1BW0oKFc5Tq1UHJCqZAxebmI90gOj+fTTGuV+llMpkME6edHStGDJAih4b
         EaGtGi2Ot87f7Kd414tmhIaRa/yBFX2vdZydFJX83HM7N2vZHII/VJ34GYZ0XxZnXdge
         6Jgt1aS8i7d6UdOtk/EhfhG3xP0+EUkYckZY6Cg19u/pTRKbPaL5kKPvEumFiJdwSxsS
         dksEzyEiP7JuSN5XWUD4YEm4Q131snKqUyCuu0UmW4Et1s7YK684OaiysTM2mVinEjlj
         oLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=L/tgf+Z48s9Th7NBCKhEbFwg777iQ/j64Fh3Yh4ebMo=;
        b=l3nrmb+KJkWbhYBPp8WRrsqr1yVOUo1iies6AcmnZNn8v34uSMbKrY1bqK9JIy4qy0
         H+HhDBc5HZMwkEvF+0RgEKuvgB3y3xhS1RRmHpkiAKO/V08RzUStx5jN56YaYAGL6Pry
         5a+eEQhlLGhSUlHJBu5WmrtnbMDxlikGvC25NHX51dGDFfgTjhkvEYcdG/T2wuvrx4eA
         lVAO5YmBUPEntMSQj26CAPyWT0wqWsrNd+MBUhXzU2v0Q1cfTZXM3vhwoAXyKubIgxwo
         slQTb78twif4mVDe4h6umnlHUFXfakiem0cMVaNl1Fe7ZYHokzTSJTXl+lO+lZaFBQ91
         cSaw==
X-Gm-Message-State: ACgBeo3tzudHDsRVDQH3VLa8TVGlnnY6KC8tPZwWZ26LeFbuA3ny0oGa
        T4P7o8iJfAd2Wc+N8q0MGUitNg==
X-Google-Smtp-Source: AA6agR5QLdeSd/K8cbeNS1YGUCuixyr5QLObCJ3tlY/soLXDvGWMFOLqSStz9wiLP8VXBb+DCFYzbA==
X-Received: by 2002:a05:6512:3b06:b0:48b:239e:be with SMTP id f6-20020a0565123b0600b0048b239e00bemr9463551lfv.586.1660142402540;
        Wed, 10 Aug 2022 07:40:02 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id a17-20020a056512375100b0048b969ac5cdsm370434lfs.5.2022.08.10.07.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 07:40:01 -0700 (PDT)
Message-ID: <826f20ca-fdf0-cd40-339a-6fa9786756b3@linaro.org>
Date:   Wed, 10 Aug 2022 17:40:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 1/3] dt-binding: counter: add ti,am62-ecap-capture.yaml
Content-Language: en-US
To:     Julien Panis <jpanis@baylibre.com>, vilhelm.gray@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, mranostay@ti.com
References: <20220810140724.182389-1-jpanis@baylibre.com>
 <20220810140724.182389-2-jpanis@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810140724.182389-2-jpanis@baylibre.com>
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

On 10/08/2022 17:07, Julien Panis wrote:
> This commit adds a YAML binding for TI ECAP used in capture operating mode.
> 
> Signed-off-by: Julien Panis <jpanis@baylibre.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Subject prefix is "dt-bindings".


Best regards,
Krzysztof
