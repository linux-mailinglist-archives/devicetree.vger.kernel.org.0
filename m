Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A927C57D1A4
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 18:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbiGUQhS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 12:37:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiGUQhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 12:37:18 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2C817B1C5
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:37:16 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id a23so1225950lfm.10
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=egOPuEF9TqE75gZWwUjjn7qf+5eCfzce3I3zf+IUXOo=;
        b=lMktJyzrq1TEYow7Koe8TieEr0tXpOkNUlPK+blhOL7s0Kdtidyp+G2N+ZZ4qxbmXJ
         Rp4er8nUP2ZdowjxcqDVBUkgezKRr5hUiYpnrx98MPVLhAM3+X+EQhVKwNyndbiAlJp3
         VH6Olpyynvcz84fZOsOVU59G2lmJ4LI6pWUQxKBLL94P2AplGDGP8lN4I2DLdhUhz7kY
         1xByz8ImHNXldbxUkRDgSNOH5Nawi7AdKQpzfQ1W4cAQ/W4xVS3tx5VH3pskOBv8zBfz
         UlF+ESATrroO7a3GCavLz6U6tF1XOePATh4c/zdgh17bppeuyk23VaHEMB81w+UmMGn9
         deiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=egOPuEF9TqE75gZWwUjjn7qf+5eCfzce3I3zf+IUXOo=;
        b=aiQ3avzZ0MQ3RL3gkBG9vNYvNA820moGarOhc2eV/vCY6/XaN8uDWbR/AoRVtHwilb
         iDkir7D9xh++hzPKag1oM9EavrgKQ2l+5A5ysYgNdPRrP+uJI4scZo+X8bUG1pvUwvl9
         pn3XW/V+/nUCrUpYz/3Kpjr60sKlLTD582+uGlKsqE1sLQ8ib8hHOfa3uiGCkZkCvwpd
         IzPqgMgK2yXYFAB1NuuthcGjEL1fgT84c0Lj4Cg43+dbO+yoHb5DVCOalkoqKOUEV9qL
         xo8Bzgiaz8lsKtmEm3qScqDXnFV7dHfnnSvQ5HgqkdWF5yfkyJ62kkInKZ2A0bzF7sDK
         m0yw==
X-Gm-Message-State: AJIora+cYbDK582rqVKjlcXS7aIObo38b7FVqzyfikNndbjgqtXvdhTB
        YYUfPJ0BIHOLQhr1xdfolt0bbw==
X-Google-Smtp-Source: AGRyM1si6G1spc2SptdyuVnAcORyTN034fH8EFU/ukJye3I59DI2LMn3mMICtmSEXg4uCa3HJG1r2A==
X-Received: by 2002:a05:6512:3996:b0:489:d526:93e5 with SMTP id j22-20020a056512399600b00489d52693e5mr23205070lfu.534.1658421435329;
        Thu, 21 Jul 2022 09:37:15 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id k6-20020a192d06000000b0047f674838a5sm188263lfj.231.2022.07.21.09.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 09:37:14 -0700 (PDT)
Message-ID: <67796aa8-6509-620f-f96a-ff22218f1b0c@linaro.org>
Date:   Thu, 21 Jul 2022 18:37:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 2/4] thermal: mediatek: add support for MT8365 SoC
Content-Language: en-US
To:     Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        matthias.bgg@gmail.com
Cc:     rafael@kernel.org, fparent@baylibre.com, amitk@kernel.org,
        daniel.lezcano@linaro.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
        robh+dt@kernel.org, rui.zhang@intel.com
References: <20220720181854.547881-1-aouledameur@baylibre.com>
 <20220720181854.547881-3-aouledameur@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720181854.547881-3-aouledameur@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2022 20:18, Amjad Ouled-Ameur wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> MT8365 is similar to the other SoCs supported by the driver. It has only
> one bank and 3 actual sensors that can be multiplexed. There is another
> one sensor that does not have usable data.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Reviewed-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
> Tested-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>

Just like in all other cases - you miss your SoB which is necessary for
the chain.


Best regards,
Krzysztof
