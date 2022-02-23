Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C67234C0E05
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 09:07:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238919AbiBWIIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 03:08:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233116AbiBWIIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 03:08:17 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE94142EC0
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:07:50 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B990E3F1B7
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 08:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645603669;
        bh=cJAoPDc8aKVGCYTCguUnHYj9Um4T6R7Mz/nddrCfS+U=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=BEnIEv+WsJC6I7DqWHoeNGmj5Ar9fPOuOxjJ5W83I8soAzpOZpRchMPfFMRB43/h/
         Y4tIcXCefv8Le/kZdMPu+KV2NHew2kJAy5oi7n4uKWDZQxnAq9EmQT2Ys+0Qw+8SRb
         oB2PxPAgNLQNa7lWsLs844GO5MzNI3JztTfNYUrbUs7tPzPgCD4DwepA86iOxhG+YE
         PASfdL2vTqmo8kTLmTnvECBB24hFKO8Pn20bKeSocr9L4ZoNuoSfbCY805vv3uncze
         PbbMLdipJe+afTFtCO03ZQCEd2zpfqZ6IlqAlSFZhZkqmhoh2ypA+6GKcM7dIbXv7F
         xJD4ocEeyp3/g==
Received: by mail-ed1-f70.google.com with SMTP id l3-20020a50cbc3000000b0041083c11173so13234947edi.4
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:07:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cJAoPDc8aKVGCYTCguUnHYj9Um4T6R7Mz/nddrCfS+U=;
        b=V32WsFqfxl/KjCVvP9/5CKoGFmWVNU1r1C5lLcKPgOEkq5EE1O3cL2qS6l4I1mljDr
         eOLEw/tmrr4lw6i8ATORWV3+i1qFHQzsHdRhHo5fOiRZETkypYqxh7E/JlQ29J/lKQjx
         dNtZW2r2fT9D8ECwHb9hY3BtpZYFArpClAdJGJawRM1yDYFKafcyv11cSFO6O3o3Hv0g
         wmrm/WGYHaUp0vYwU5Svy33wlTr7xaGKT3g7N+S+Q6ZUhAxoHq+1lIBlnWHphwBskyze
         krvHMgVKku7V4gJzPC6mFbW8IpEbq9yogoyBz9dnchVoP0A31f1XgtsN9wHMBtB9wKnN
         jM6A==
X-Gm-Message-State: AOAM530VugGSjWiCVZUOSz9XIiNBPanYMpEAopq3ZoHttV44gUwFTPHF
        XYJjD6aq5o+6ibDYycG8d9D8ITr+LeoozkTV7epTDYW+zNiTOq2RqeN02av5ZPyoZV8oknvJv3r
        hWp/slcx7b6eewMOfUDNip5JGJ5VCjM9ICzelJMg=
X-Received: by 2002:a17:906:3b4b:b0:6d3:4b9f:1764 with SMTP id h11-20020a1709063b4b00b006d34b9f1764mr3782771ejf.345.1645603669461;
        Wed, 23 Feb 2022 00:07:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw+sAsvC2YVaWkNxMY27IgSZbd57gDhRWf6CFP5QRb8O1Ze/Oy2J3V8J8SGl8x0BiwMVeVhGA==
X-Received: by 2002:a17:906:3b4b:b0:6d3:4b9f:1764 with SMTP id h11-20020a1709063b4b00b006d34b9f1764mr3782763ejf.345.1645603669271;
        Wed, 23 Feb 2022 00:07:49 -0800 (PST)
Received: from [192.168.0.124] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id h8sm11129654edk.14.2022.02.23.00.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 00:07:48 -0800 (PST)
Message-ID: <566af033-352c-ad04-53dd-219cda3f78a0@canonical.com>
Date:   Wed, 23 Feb 2022 09:07:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 1/2] dt-bindings: input/touchscreen: bindings for
 Imagis
Content-Language: en-US
To:     Markuss Broks <markuss.broks@gmail.com>,
        linux-kernel@vger.kernel.org
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Henrik Rydberg <rydberg@bitmath.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org
References: <20220222203414.8656-1-markuss.broks@gmail.com>
 <20220222203414.8656-2-markuss.broks@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220222203414.8656-2-markuss.broks@gmail.com>
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

On 22/02/2022 21:34, Markuss Broks wrote:
> This patch adds device-tree bindings for the Imagis
> IST3038C touch screen IC.
> 
> Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

No need for blank line between tags. I guess this can be fixed when
applied, but if there is a resend - please correct it.


Best regards,
Krzysztof
