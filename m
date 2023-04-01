Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7B456D2F6D
	for <lists+devicetree@lfdr.de>; Sat,  1 Apr 2023 11:38:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbjDAJi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 05:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjDAJi0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 05:38:26 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85BF5CC33
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 02:38:25 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id m2so24710563wrh.6
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 02:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680341904;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7y4QObQjB8Gj761x2HaPGgKP0RKXZVV70/mLt0he7Vg=;
        b=k7v4l0o0N7KDt8NrpBfKXc5a/hZScb4HmLJYiVpO575TRB+vv/AtIUb5dUGLW6gddw
         Sj8JHt0j/7qKQuReJMPJ0XMQ3OOwg11BzxNYj/VbaF50eeaMQmQcHji9/eL6LPZjKzwR
         n8cA8jZlTl+Ej0NdQQ1wyQztA+ar+n4DKwe/05Op28BMZpkDtudyJ9L6NxuMuRZx9FQE
         LXBVSax2ClH92U7vsxhJUJh3p433UrKzGPBVMfITwxOjhV4n+aNY9xDeKbQcVfjUxIPt
         JvbHb6nTpq7IfkX+8S3mbqZKHyqCa0mLPwhtRc5GqAfvARQRxaNDtLe3uQOm1U2nINcv
         893w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680341904;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7y4QObQjB8Gj761x2HaPGgKP0RKXZVV70/mLt0he7Vg=;
        b=MWjKcWhxyUu8uEXnQsHwzJm6EulO8xDcHrSo7ZCWGoGrG1YEJlNEesb+qwABnSMFb1
         /WBINP24Pkuy+BMlO9idmdly89GlQYaoKVVI/lPbDeiSbk5CTcYDbiOZeBQU87fLAEwE
         WNyzeBnk87QUvO+agUUFCKOn4unifUQ5YXo/3Ry7GB/97XHS2BjrIJhGOC2CgsaC0Eol
         LwmdBIoeZ0SMkjnAF2ZGTa/7W9RA9R9RHVpG4FtT3AT+IhUqGPFgZQYxm/uwl9rVxBRU
         4STFqlrilMGUOEV41gljECuaZLHTKKG/C9T3D64iA0J8cY2vlt6aCwtVtsoW1opmI6t3
         3BYQ==
X-Gm-Message-State: AAQBX9dS7mpuP1nK8W4+X7qcuQ+ISJ9TEwtQQKn3KR9MQ2L2DMv2C+mM
        mbca5J8Rsc7xPRGoCKhymBUWVQ==
X-Google-Smtp-Source: AKy350YT94N4vYS2YYwzi3p7MzDvppiiKQEgYsVoO99YGOnea2g2/EBTUwNszOjH2rMTWeX+hAQR+A==
X-Received: by 2002:adf:ff85:0:b0:2e4:aa42:787e with SMTP id j5-20020adfff85000000b002e4aa42787emr6679300wrr.51.1680341904016;
        Sat, 01 Apr 2023 02:38:24 -0700 (PDT)
Received: from [172.50.14.32] (5-226-109-132.static.ip.netia.com.pl. [5.226.109.132])
        by smtp.gmail.com with ESMTPSA id m17-20020adfe0d1000000b002d1e49cff35sm4440930wri.40.2023.04.01.02.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 02:38:23 -0700 (PDT)
Message-ID: <afe6b710-9f95-e225-27ca-655b104939c9@linaro.org>
Date:   Sat, 1 Apr 2023 11:38:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 0/3] Support Honeywell mpr pressure sensor
Content-Language: en-US
To:     Andreas Klinger <ak@it-klinger.de>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Angel Iglesias <ang.iglesiasg@gmail.com>,
        linux-kernel@vger.kernel.org
References: <ZCf0wM4RT5bFWlhF@arbad>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZCf0wM4RT5bFWlhF@arbad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/04/2023 11:09, Andreas Klinger wrote:
> Support Honeywell mpr pressure sensor.
> 
> This patch series adds support for Honeywell mpr pressure sensors. There are a variety of sensors
> with different pressure range supported. The pressure range needs to be set up in the device tree as
> minimum and maximum pressure in Pascal.
> 
Your threading is missing thus patches are scattered all over the inbox.

Best regards,
Krzysztof

