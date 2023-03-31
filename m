Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1147B6D1905
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 09:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230478AbjCaHvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 03:51:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229722AbjCaHvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 03:51:14 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80E681A971
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 00:50:11 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id h9so22159558ljq.2
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 00:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680249010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rp61AZrrrJ7L6Ea4XSRLHJ/Ln9sIYk2x6qqY8rh7zM4=;
        b=qM+oBIBD6/4I26sY9lrDp/o6uOQD+VJqjveehx5YKQ5U4XVIIJdQyWfIqLGrjSRFGM
         OVSGuWvmjg4bHjNyx4hooahb8ZMXIF/FKcH4A5/DTX/UO0KoQpdLzBt1duQeuwiyQlIr
         NegaXc/uhq0C1G8dE3Fpmy8fAcmOIGLaYTrPkO3pkKx0T4Hi4XcEedrpVbXhpqhG7rQ3
         S0+dsfpQTRhlfRl1DUePVmMgOpbBV8Ti9hlTG8cxeRVgJUvjsTDqVIWBJDPXYasUVgeO
         4y13tVzzYjdCDj469LKssnOgESUixPCxtuHXtIPKnoFh1PDNs+6opz42G4RdfEUCKu+V
         f2vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680249010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rp61AZrrrJ7L6Ea4XSRLHJ/Ln9sIYk2x6qqY8rh7zM4=;
        b=I7avwFGkmEj7aTCrXLyK8iuHRztBHXhJ9XHur9fsoup4gtPAlA3okCggKkNalvcXrA
         IvFbnLKfVWqxCVpbIWP4e0SjUBOqOprfH12MLiKIhlgBh6WsNFe5ZJfvroVHs2Eh4hqV
         ykIkW6cpQr86SLnCIEfKvn5bG0nsbj8Pkemls5AteupnY80nvmYwmonCdA44OUXdgIxj
         WbceLoZlLMl2cM8BOmVDW/veP+mfMvoiTm3O4zdiEsUWdUBxVGe6Wj4s+v0ZxZHW2WFL
         sH8RwcJapNPHSf2OfaMEc0llaoPx1b/Pf9Yr8EM/GazmctwfzyipTfiH9dk0sdnP88hj
         NWJA==
X-Gm-Message-State: AAQBX9e6iqHygGoZVqRwvD7ljcush2yqQn8sFtDh6aYcvJxJSFvmeZkj
        7Dlj/2RIvl6k4r/R7JHMJN/S2g==
X-Google-Smtp-Source: AKy350aP0sVxOVbRdfaxygjd9Zkval2nVvpFquxKpaz0Y8pPfwIPacIOwyKNqxo+YZny2UHLm+5AUQ==
X-Received: by 2002:a2e:9ccc:0:b0:2a6:183a:9a13 with SMTP id g12-20020a2e9ccc000000b002a6183a9a13mr1625313ljj.46.1680249009752;
        Fri, 31 Mar 2023 00:50:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p23-20020a2ea417000000b002934abfb109sm249539ljn.45.2023.03.31.00.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 00:50:09 -0700 (PDT)
Message-ID: <2872b939-a617-90ee-2249-9eb535559f07@linaro.org>
Date:   Fri, 31 Mar 2023 09:50:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V4 2/2] ASoC: dt-bindings: max98363: add soundwire
 amplifier
To:     =?UTF-8?B?4oCcUnlhbg==?= <ryan.lee.analog@gmail.com>,
        lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz,
        tiwai@suse.com, rf@opensource.cirrus.com,
        ckeepax@opensource.cirrus.com,
        pierre-louis.bossart@linux.intel.com, herve.codina@bootlin.com,
        wangweidong.a@awinic.com, james.schulman@cirrus.com,
        ajye_huang@compal.corp-partner.google.com, shumingf@realtek.com,
        povik+lin@cutebit.org, flatmax@flatmax.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        ryans.lee@analog.com
References: <20230330234319.6841-1-ryan.lee.analog@gmail.com>
 <20230330234319.6841-2-ryan.lee.analog@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330234319.6841-2-ryan.lee.analog@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2023 01:43, “Ryan wrote:
> From: Ryan Lee <ryans.lee@analog.com>
> 
> Add dt-bindings information for Analog Devices MAX98363 SoundWire Amplifier
> 
> Signed-off-by: Ryan Lee <ryans.lee@analog.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

