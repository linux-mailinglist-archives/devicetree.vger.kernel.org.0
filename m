Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBD4067689B
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 20:52:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbjAUTwE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 14:52:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjAUTwE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 14:52:04 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B2761E1EB
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 11:52:03 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id y1so3054799wru.2
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 11:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zRJSIabFnFwrOaexQaY+fAeIYBNitIGAArXPlI0IFRM=;
        b=uGNB6bTvXh9EqBXoR0tIcp7PU55Yvj1mN0hAN6nBweRmRqqr8lEe+FBw+CI+W7UUVC
         TXDlzb6AMhsPk5OmAwiDmyvRNsJuJYprRaUZS8OGsHqEakldjyqUmWhFgRCUVElZjIdW
         tUXvJ5LEZqzm3NKWOXcW1Peeg7TxZbfzCmqywAi+lb5GlSKlogpGMogIKfjuAJe1TEzE
         yqOCmW8EpqQA9s8EQYJn75QQuInoQ92dZuwIEub78H23F5a+rGx5jGkljaF5UchxzZDS
         nNNjZ+9SmESLXb/iHyWqgU0edzrOqFyd718w8ZIH1lfuC78lafpKl1qgzuKqV9YDwgVx
         CDOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zRJSIabFnFwrOaexQaY+fAeIYBNitIGAArXPlI0IFRM=;
        b=3wforx76jZHvee2pccE6ZfAzt5o1W3h78uStdMdZxkapwvHZajYnc9n/bDdrcvjsW6
         eQjR3ZYQJ0vm18z4Qb4WgAywnLbrKxNQIrARAfq0oamz5XzfFH5vZMO712BxkoXdCCRi
         /auE84EXNYvBiXDKAtaMjniJlUpqqxrTNs+Xy7WC3beSLekc41B07ffvOHGdW7mcdoYA
         +1UZDSTwCvVSmIwzIi8GZguy/0nInWPl30Ugi1pSBIaM7FbU32YhIy7CoMrU4CKjQk+0
         Eg2cL3Ge4E7S67BUpOnPK7MJfRyvUWXRQGcOvB594iOqsBcYWHbaLML3Y4Xzp8mLCgDE
         G+8g==
X-Gm-Message-State: AFqh2kpv4OYue6XuXZVgElXqmgXHpWW+scLgGvDiV3CILSa1wIZ/8HUn
        6j3/rfwPAc74qgrRj3OL5CPKNQ==
X-Google-Smtp-Source: AMrXdXsZ555HmqJVLOUAAgMEw9PmLNVmPOZGU9iDJiLehJTu88+iepI3sNg/9RyahejJlEllgjwvxA==
X-Received: by 2002:a5d:4b10:0:b0:242:285:6b39 with SMTP id v16-20020a5d4b10000000b0024202856b39mr16534317wrq.50.1674330721682;
        Sat, 21 Jan 2023 11:52:01 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s18-20020adfecd2000000b002bdfcd8c77csm16906546wro.101.2023.01.21.11.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 11:52:01 -0800 (PST)
Message-ID: <007048f8-b5ec-21e6-fa47-198690ff2246@linaro.org>
Date:   Sat, 21 Jan 2023 20:51:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v7 2/3] arm64: dts: imx8mm-evk: add revision-B EVK
Content-Language: en-US
To:     Marco Felsch <m.felsch@pengutronix.de>,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
 <20230110152316.1149940-3-johannes.schneider@leica-geosystems.com>
 <20230120195331.c62pvvljcd36jr3s@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230120195331.c62pvvljcd36jr3s@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 20:53, Marco Felsch wrote:
> Hi Johannes,
> 
> please adapt the subject to:
> 
> arm64: dts: add support for i.MX8MM-EVKB
> 
> to avoid confusion with the revisions written in the schematics.
> 

Except that this misses sub-arch prefix, so arm64: dts: imx8mm-evkb: ...

Best regards,
Krzysztof

