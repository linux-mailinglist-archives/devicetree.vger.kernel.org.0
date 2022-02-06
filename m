Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4FEB4AB0F6
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 18:34:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344437AbiBFRey (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 12:34:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344433AbiBFRex (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 12:34:53 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D001C043184
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 09:34:52 -0800 (PST)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id F163F4003D
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 17:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644168890;
        bh=z5izoBPa4R9EwBL70QufFWzK1TBtESD+9kJEsHX6Aho=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
         In-Reply-To:Content-Type;
        b=MIcGa5Z4ikByeqdyMIUwhP5763PiJCTkTyKn2rStWLy0o1Xs8B/ifhdO9SPexYdI/
         Ou49EtOlVCTFTQx7ITn1yjm/lExxWEutNyNntcNpTZjzlGgS1tvPSiWA/fIbo+cv8j
         y0RchwfLEuf4IkZaqgTUaL1IBmPMfXRG18fJwI8ZTKPLfxHEB1njGPArbTqSEWVP/D
         MnFMvI7BYKt6DjC10Sy+FeIMYaT6XN2qB2Ic3JuXlH1fgqGYfxXszmiXQP8Qyp9v+4
         8iUOAEM/OljJykik8ti0X2oSWMc0UgLEE9OB9Pm35z2cVJ4Wx4nBh5x3cHPjKHuCnm
         lMFoSSB/ntDiA==
Received: by mail-wm1-f70.google.com with SMTP id bg16-20020a05600c3c9000b0034bea12c043so10829757wmb.7
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 09:34:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=z5izoBPa4R9EwBL70QufFWzK1TBtESD+9kJEsHX6Aho=;
        b=3sFWpe01+QfCk5odi8g4jNnvBskPgAg+qG4EGkBcVTHSLOYmx0DYhM4+pie6zF5MN8
         WNAEs1MaMq6DfXklsPmwWOWMVa/pviHIR8nJNaOqFQo7T6vO4+tmIF3txgQehDalS+ct
         icug1tu41J3Hudbm2Hm8yBIbZz+n8DRXwNlK49As5zrmlTSya4FsBUvJV70BtfU69zVC
         xzswxyQ9NTEveRdGWkLnutRuMfgzyABsOPc7JPJbfTttpdZIM4s8fmpDEKLFZTb2xiJI
         Qey3/iH1jWje8pAbqoTmihbL/NhLnAsDuQaV4jb6nQpqeJkox2rH9zoCFaGvThiN2U9X
         FjXw==
X-Gm-Message-State: AOAM533KcJI0rQBIRE9x3EtJAb/LPBtTbtjs2yYqWNlkjF8hGlQL2jX3
        KS3wsRwUdj1IAnJKYDY4nUnzdXcNRkl81tvSxIyNJPlGD4vNnwd51nMkPcNQRmzZ3ggawos4Gbu
        Otop35tNoWCayzrnYptQiiY6WngVSFFlWFH72HxM=
X-Received: by 2002:a05:600c:510e:: with SMTP id o14mr7785312wms.163.1644168890671;
        Sun, 06 Feb 2022 09:34:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw1rOAFnc0rXLk6obrEoY0IBwhFxEnLcHOsLdWK71QDzzC6xlUe0hnU8CgHpqzZIXOQQqmMLg==
X-Received: by 2002:a05:600c:510e:: with SMTP id o14mr7785295wms.163.1644168890461;
        Sun, 06 Feb 2022 09:34:50 -0800 (PST)
Received: from [192.168.0.86] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id ay29sm6975979wmb.38.2022.02.06.09.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Feb 2022 09:34:49 -0800 (PST)
Message-ID: <f0a9e656-cf18-f212-b701-a1c9d10c4a59@canonical.com>
Date:   Sun, 6 Feb 2022 18:34:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 0/3] regulator/mfd: dt-bindings: maxim,max77802:
 convert to dtschema
Content-Language: en-US
To:     Lee Jones <lee.jones@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
References: <20220111175430.224421-1-krzysztof.kozlowski@canonical.com>
Cc:     linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Liam Girdwood <lgirdwood@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220111175430.224421-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2022 18:54, Krzysztof Kozlowski wrote:
> Hi,
> 
> Changes since v1
> ================
> 1. MFD: Use absolute path to schemas.
> 2. Regulator: skip properties.
> 
> Dependencies
> ============
> 1. DTS patch: nothing depends on it, sending here so Rob's automatic
>    checker won't complain about DTS.
>    I will take it via Samsung SoC tree.
> 
> 2. Final MFD patch depends on regulator, so the two last patches could
>    go via Rob's, Mark's or Lee's trees.
> 

Dear Lee,

This patchset was reviewed and there are no outstanding issues. Could
you pick up entire set via MFD tree?

Best regards,
Krzysztof
