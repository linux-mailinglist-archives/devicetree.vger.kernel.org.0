Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6475A900C
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 09:24:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233909AbiIAHYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 03:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234024AbiIAHXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 03:23:50 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EAA61257C7
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 00:22:25 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id p16so5121121lfd.6
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 00:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ie2djqYNwgtHdEpHOV+v/LaEpFF1VLi5D+xGUiqnUlQ=;
        b=yx+10WgNA8vbWj86iSzdffDWkiXLC6RkN0OA/LaRYIceHpNdUDnISMcUq9v0erTQid
         OS4chuIARwbiC/E/3SFMJHRIyZ7+ADYxmNTi/HthzUQWc7X333GWoSvYXbdO7mSNo2/j
         gZX6Z39LqqQIUNn3MBM0GsIOiraxvWfAfDUbGvNAxIN5B7+6g9jThGKh8E7qNu0pVjJC
         dBjXcl4qf+4L0oQwKcYmToCKDhMwq5cm3z+4ldceol6UeVntr5u2riV8VD7qWBLHxq6W
         zEvKxMR+73ubvIidHeMbEwaMzfsF1mA34MQkVXmwIzfuH4m0wKosmOC4/pgD/iK6Xkqv
         PRZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ie2djqYNwgtHdEpHOV+v/LaEpFF1VLi5D+xGUiqnUlQ=;
        b=GsLzy1hjvF5E88LNOQPibLyns4BVOpVwtsFwuMkTv1g1KSjYMpa9rsrtwg9aBMqVpd
         7ruq6+UZ0UeEbc8chEysGzomqd4SJvfu9ldx10sUVm4yXcxXpEYSD0/DVN3Hb7WX4j/v
         lqrhBQUaMnqT57SIzQheN+UziiPs2eAg6GEbi3sliNgeM3iQ0VXra96ylJgFaChWsImv
         YB3BVCoHE+4Y8jr5+DcjOR05cWxwISAHliG7wiJL499fDYpxoyQX3UBnq5rFEkiUh6EF
         8sR6ZPvmk8X4K2ci33fcb3KsKAzn8qSJ63CLx5s6Mv61CSXhMM9CXxlx68FBOnEEsAiY
         7L/Q==
X-Gm-Message-State: ACgBeo2DxN/63RVEmYcar251gkTpXQc3Jhgv76A6p4i7b2iI/kQUXla/
        HZ0LVL8X0yAStMmK12L29X+Ogg==
X-Google-Smtp-Source: AA6agR6HAGWkYV9AblNrfA6nszZ++/weoiQT80yxwTmaNTDOyHaLVUjO9zlO1QVAGd9VSncFBccJcQ==
X-Received: by 2002:a05:6512:3043:b0:492:c11b:6883 with SMTP id b3-20020a056512304300b00492c11b6883mr11438731lfb.642.1662016939597;
        Thu, 01 Sep 2022 00:22:19 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id b24-20020a196458000000b004946b7593fesm1380054lfj.198.2022.09.01.00.22.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 00:22:19 -0700 (PDT)
Message-ID: <02397b5b-63dd-ebf1-2c2e-11fa4a0750db@linaro.org>
Date:   Thu, 1 Sep 2022 10:22:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 2/2] nvmem: lan9662-otp: add support.
Content-Language: en-US
To:     Horatiu Vultur <horatiu.vultur@microchip.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, UNGLinuxDriver@microchip.com
References: <20220901064405.149611-1-horatiu.vultur@microchip.com>
 <20220901064405.149611-3-horatiu.vultur@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901064405.149611-3-horatiu.vultur@microchip.com>
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

On 01/09/2022 09:44, Horatiu Vultur wrote:
> Add support for OTP controller available on LAN9662. The OTPC controls
> the access to a non-volatile memory. The size of the memory is 8KB.
> The OTPC can access the memory based on an offset.
> Implement both the read and the write functionality.

Drop the full-stop from subject.

Best regards,
Krzysztof
