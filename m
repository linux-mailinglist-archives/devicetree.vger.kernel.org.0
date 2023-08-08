Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FBC2774248
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:39:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234878AbjHHRjm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:39:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234821AbjHHRjM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:39:12 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B144FE43
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:17:09 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fe426b86a8so48745675e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691511360; x=1692116160;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=WYDOE0uAfuvMMd7frP4lQPvrrdCPX7CA5G+ozoaawe4=;
        b=SmOkCgCe+Zn7m+n3OOojdiYxGFWm4hfRDCokGbizEm3Zg3AsL4zk3Wd3mB72Yr8ciH
         i/zKn32g2KOymEcIPtwngcjEJcf3hscAqeUWb/1OX8Rxq2RgahYj48FXyw94n6fMT53w
         LlKCHx7DLU7MhRxMITge2zwAADdMoww7NkTsJTJA4/LnK3arvpvVUFRSPAc0nGzuQ7QD
         avORu+eKBLgJ510T0a1z+DKj/NBB/vY0dsuIUJ8VKmItFXVTLrnWuH5+dxdZIUfRYlkZ
         M/fDL8qYc24/icoZLVfsqWYCbDcvpfzJv7SecBf9N7fYjkOct9Qa2zEzq8OxtBeyWY+0
         jAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691511360; x=1692116160;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYDOE0uAfuvMMd7frP4lQPvrrdCPX7CA5G+ozoaawe4=;
        b=ZXCOL+uiO5FccoauDiX8VURsDxUknz4DTKMY8yC5aTKxG7bGZZoSpX3yf6vJ5hZQYe
         3dZf7tm3g5G0gz41q/oppK3s4MNaBoNuTPHq8b1x9etCL090Ed/g8sgX0WCyxwtmTskD
         MlZfn/cF7w5C0IgV+16Oweq90/u0gWPlbeOQra+mTM0uvGdkFMh8DVOM8zUCKn1XkbND
         LXS2PPDC0t8042QmxI20nFgSBz2NIQT4DBNIlZWpsD9Ar5C3hd5GNcdFcDoaizmp/+36
         Qe0V/nOLzS7yrUdPSAzvugSmxNnXdJfw9NnkYvtWwDCYhC9SPWGv75SrY+AwMXvjWzgW
         PchA==
X-Gm-Message-State: AOJu0YzUKdgdpTDBcFfxzOTavWB8zltqDFt9P1g4EnXDHfjGF4Xlw2Xp
        FcxNaGxf9HAqFMKro9xWhlmEYSFM8F84L683peU=
X-Google-Smtp-Source: AGHT+IF/sVg/Jhlijx/RE5QOgQaMgGYHCPyQMz8dSgQ4an0cId67kpg37dk0nwOSpbyiFJyhIGgAng==
X-Received: by 2002:adf:fa4a:0:b0:315:9de4:92f0 with SMTP id y10-20020adffa4a000000b003159de492f0mr8496109wrr.5.1691507150251;
        Tue, 08 Aug 2023 08:05:50 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:efd4:f3df:2c50:1776])
        by smtp.gmail.com with ESMTPSA id y15-20020a5d4acf000000b003144b50034esm13863035wrs.110.2023.08.08.08.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 08:05:42 -0700 (PDT)
References: <20230706-b4-amlogic-bindings-convert-take2-v3-0-f63de6f12dcc@linaro.org>
 <9adbbde6-a12c-2857-3103-1c012eed6f27@linaro.org>
User-agent: mu4e 1.8.13; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 0/3] dt-bindings: second batch of dt-schema
 conversions for Amlogic Meson bindings
Date:   Tue, 08 Aug 2023 17:05:12 +0200
In-reply-to: <9adbbde6-a12c-2857-3103-1c012eed6f27@linaro.org>
Message-ID: <1jleelo9q4.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri 04 Aug 2023 at 15:35, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> Hi Jerome,
>
> On 06/07/2023 16:52, Neil Armstrong wrote:
>> Batch conversion of the following bindings:
>> - amlogic,gxbb-clkc.txt
>> - amlogic,gxbb-aoclkc.txt
>> 
>
> <snip>
>
>> ---
>> Neil Armstrong (3):
>>        dt-bindings: clock: amlogic: convert amlogic,gxbb-clkc.txt to dt-schema
>>        dt-bindings: clock: amlogic: convert amlogic,gxbb-aoclkc.txt to dt-schema
>
> Do you plan to take patches 1 & 2 ?
>
> If you can, it would be simpler if you could take patch 3 in the same batch.
>
> Thanks,
> Neil

Applied all 3 - fixing the checkpatch on patch 2

>
>>        dt-bindings: soc: amlogic: document System Control registers
>>   .../bindings/clock/amlogic,gxbb-aoclkc.txt         |  64 ---------
>>   .../bindings/clock/amlogic,gxbb-aoclkc.yaml        |  85 +++++++++++
>>   .../bindings/clock/amlogic,gxbb-clkc.txt           |  53 -------
>>   .../bindings/clock/amlogic,gxbb-clkc.yaml          |  37 +++++
>>   .../soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml  | 160 +++++++++++++++++++++
>>   5 files changed, 282 insertions(+), 117 deletions(-)
>> ---
>> base-commit: e1f6a8eaf1c271a0158114a03e3605f4fba059ad
>> change-id: 20230209-b4-amlogic-bindings-convert-take2-e2caf8e1c13f
>> Best regards,

