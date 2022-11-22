Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AB80633A44
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 11:40:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232835AbiKVKkD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 05:40:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232252AbiKVKjS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 05:39:18 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F238E5B869
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 02:34:38 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id u2so17475058ljl.3
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 02:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2brHgcpqZ3sRW8QtL8T8B27UN1AKl4DJcgIUeewysA4=;
        b=p0yUndpK8dpgvTxWvPB+vCisDccNYmwB0OHdaYLnZ5hhRNvI7Qfi1VJG4paULDzFTC
         8jDLoPW7LQIy09ZhRUyu1QXaVhkNanAupvnfWeubnusfDh/vifoOLc5gO53ZjWw4RFZm
         t30qpOHoOF64pwZdYGvRXFs4ckkqSOEZrS1VuV2Zesw0PXrG21NecmoffChaAZotTtFi
         DfAP4LXphvPe1yGTbcG5JYhEiJqRHmoAX/Tk2+8lmmu/v+BSQyJoLiDdK3Voh8jAvaT6
         aGpugge2eQghIGe7Xx5j2arlc8riS61AjGIRpZ5Fx6osgeSqDyiGuWKZUaRhA34hLAcK
         GGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2brHgcpqZ3sRW8QtL8T8B27UN1AKl4DJcgIUeewysA4=;
        b=H/EstdXvHAU4M8I8rU6ZaL2TbrigWbbOcfy0BtKH2YIYX2VRhD8dgVSDgF4rjndQjy
         YB+osrqaY/wZjxU0LmkuHgfSZPfDY+V1uMIqtIaI3M6CT2vdA3nKWdsAqJm27MAefoSU
         H6ZLJyQCRMc+EJ0McVblu4/umSvQCUm3CvSR31M/pcB2c8WWrd9P9XIVI8B+5o0YxF94
         64OaM80RSccywa2ib4JmkF6WwnLFYlRvRFIgZBzPoG1cMIFcPPLuhYU8Q2wzxhutwRKW
         yo9Myi3vuHA1XuqqtBH5MiZgfX2GtXFjWh8q/S+51VJwt7W6x0llel7p/BZuahvKhYjR
         7Txw==
X-Gm-Message-State: ANoB5pm1yn0zRVQ+zhV4QoIaXYAuqqT4muRk2VO+M6PAYKJtQUA63ZXR
        RnksULWhb6bY470aMP4f5OLVCw==
X-Google-Smtp-Source: AA0mqf6SsLxXTEF8mHl/LmmFJKIv4PhzJgH4lI+svd/KdU0oqhomtBRLBiH9/98X+t0V1WUqHo+TMg==
X-Received: by 2002:a2e:a274:0:b0:278:eef5:8d07 with SMTP id k20-20020a2ea274000000b00278eef58d07mr6762130ljm.61.1669113277356;
        Tue, 22 Nov 2022 02:34:37 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d3-20020a05651233c300b004a0589786ddsm2421049lfg.69.2022.11.22.02.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 02:34:36 -0800 (PST)
Message-ID: <b38d5824-67c6-f8be-80a4-d797c500ca99@linaro.org>
Date:   Tue, 22 Nov 2022 11:34:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/7] dt-bindings: clock: renesas,r9a06g032-sysctrl: Add
 h2mode property
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Herve Codina <herve.codina@bootlin.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        Gareth Williams <gareth.williams.jx@renesas.com>,
        linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
References: <20221114111513.1436165-1-herve.codina@bootlin.com>
 <20221114111513.1436165-3-herve.codina@bootlin.com>
 <a1a7fdf4-2608-d6c9-7c7a-f8e8fae3a742@linaro.org>
 <c9a77262-f137-21d9-58af-eb4efb8aadbf@linaro.org>
 <20221115150417.513955a7@bootlin.com> <20221118112349.7f09eefb@bootlin.com>
 <d9bd5075-9d06-888d-36a9-911e2d7ec5af@linaro.org>
 <20221121165921.559d6538@bootlin.com>
 <4e54bfb4-bb67-73b8-f58f-56797c5925d3@linaro.org>
 <CAMuHMdU=-ZUzHSb0Z8P3wsLK9cgGVCPdMi6AcjTH23tUQEeEBA@mail.gmail.com>
 <a3e1332e-fc15-8a78-0ddd-6d5b26197f11@linaro.org>
 <CAMuHMdXzqZB4sKMmroriq5oPp7z=yXiHk=+eQKwSyPhNbYqgYA@mail.gmail.com>
 <1f12883b-1e37-7f2b-f9e9-c8bad290a133@linaro.org>
 <CAMuHMdVbzg8y2So+A=z8nUwHMoL+XKUrvoXp9QdbCnUve1_Atw@mail.gmail.com>
 <191a7f3e-0733-8058-5829-fe170a06dd5a@linaro.org>
 <CAMuHMdV1Y4Ldq2Hu5X8awTOWYTHq4DPYWCMkyg-9TQY=DaxREg@mail.gmail.com>
 <978fb5a1-64f3-7ee6-3e98-1e31b8b6a88b@linaro.org>
 <CAMuHMdXMoYnCHBmSwgzriOhL=EEibzsUsMKnnMK_9sZ20339Bw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMuHMdXMoYnCHBmSwgzriOhL=EEibzsUsMKnnMK_9sZ20339Bw@mail.gmail.com>
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

On 22/11/2022 11:26, Geert Uytterhoeven wrote:
>>
>> If not clocks, what else is guaranteeing the ordering? You did not
>> express it in DT.
> 
> clocks and power-domains
> 
> And if not clocks and power-domains... Oops, we didn't express in DT
> that the SoC needs to be powered at all ;-)

The SoC is a parent of that device, so you have an expressed dependency...

Best regards,
Krzysztof

