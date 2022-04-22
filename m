Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9E1050B9AE
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 16:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353541AbiDVOOF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 10:14:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1448424AbiDVON5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 10:13:57 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 993805AA4C
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:10:55 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id h12so7432447plf.12
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7KnDx3MBsXGU+6f03hFeaiX/1ovDgX2SpGS4CvxvKDY=;
        b=q2bhF3xvKQlTLaeB2d4vAiYmlXLkecs/KMghPS5aa2xC2Pb+w5XYwcWBxIwx+JHZF4
         mbUuucvNbrkEooym6ExcZc522qErtzAUV1W5/OUIpmxFjPRN3I1j7Xfc60HUnRi1fuAl
         i2Z8wXMdD3qvhT1/jAkvQBo4fPgStqI7aIRP3FMbnmf0wNP1nvKLJgLMSJ7y/29Jtmjr
         AsjyKrCVacHZEq2364EGTa4Dz4vAmNY9AO8QbSD5nXbJVnaC/eLq/RoW5gXbYoxIk794
         L8R4xffk0MXLVYxWjUFY+HLvKvsh5Wj2CDTdX0G9ZmfKdAwEkAIT1A2gXp5Cbfg0f3vW
         bv3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7KnDx3MBsXGU+6f03hFeaiX/1ovDgX2SpGS4CvxvKDY=;
        b=HfFhJCaI1Z0ZjZ0DeoMQ6hGc7mNaXDXnd/LtdSFYMZ4nqrjE5XsPMq045fWbJ8Jvod
         kxquaHDBVrTI9lTM778vVZCEzbKe/WSQM/4vI1FE1bYiHK/VlV6dvdIojon6jDN0Rpoq
         QDpaaA6U7ls0tTIPARhOxrOKlCBRQ9AMkXvn5w5BastbUoS6j9FIqxZRAviZ3+1bogvI
         6QFWZEG4s9GHZBoiMWFvzPvRRWbByRli2TK4kZRip2H/1yLcYaWBJlm20hOXnw87+AwB
         XrgeYV7e6mdSPCp8Ktb70pbS9hFOEMtg9hqRRVWLHLMths/km0idAP2YD27jc+XD/mwj
         6dKw==
X-Gm-Message-State: AOAM533iHacxJgVmUL5UwL1GSYqUD7It8Wdppgr9eM/2gwUYLuYD9/ER
        IMQsnLAIdTQazjYcDTdK63oAmpfIySN2R8XYAMzCVw==
X-Google-Smtp-Source: ABdhPJwYFHoUca+/m8OJ6ZB2tOw4pt/Jt1T0oHOVtUwkm0mgQ7orYW9ZEfXsdLO3sdd6qjZz3OXQp5IRLzG67Opuvn0=
X-Received: by 2002:a17:903:32c6:b0:158:ded2:e766 with SMTP id
 i6-20020a17090332c600b00158ded2e766mr4769801plr.117.1650636654846; Fri, 22
 Apr 2022 07:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220422084720.959271-1-xji@analogixsemi.com> <20220422084720.959271-3-xji@analogixsemi.com>
 <CAG3jFysyj7sO0qh3FAAeuOQYUSz6nkZ8svX7f4xdfSY980OkCg@mail.gmail.com>
In-Reply-To: <CAG3jFysyj7sO0qh3FAAeuOQYUSz6nkZ8svX7f4xdfSY980OkCg@mail.gmail.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 22 Apr 2022 16:10:44 +0200
Message-ID: <CAG3jFyvay13a1zNu6k1LEykYHCvy96NT2AQp9mUTOn-dB_o1Ow@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings:drm/bridge:anx7625: add port@0 property
To:     Xin Ji <xji@analogixsemi.com>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        bliang@analogixsemi.com, qwen@analogixsemi.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Acked-by: Robert Foss <robert.foss@linaro.org>
