Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD18D43EB
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 17:14:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726521AbfJKPOJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 11:14:09 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:38130 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726331AbfJKPOI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 11:14:08 -0400
Received: by mail-ot1-f68.google.com with SMTP id e11so8248753otl.5
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 08:14:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W01GRpRBdQLkNYt/6/DmE6Y13Qt+kQqmJcdbIFQHXv0=;
        b=PSzilt3oGaT354RIrtCWbwj6t55RV628S93M6Hw/H8QoNW55+b/j6uQTd8LCgLvRtZ
         0IOpZ1sPkfcr8Bd9bIR25JyKX3OKC0F0n+kAXAWkOHfDbtNEQkiCU8pkkaaxSVF6BcbT
         08vsJp21WGuO6qxet4IMzA/tScGY/TzuQB0az0GM913cQhN/kZI3w5D0gmvSyzO3i7xT
         TsucaChK6nBsD7ehscGzxW47fUhaMX7TSd6vAZ0ADC+iC6ySdKzF1n/o/MRdSbC5e5UH
         sbko0X+0vGx1xwPTHEVgSwaQhwL426clcqjnMyXUhs9QFgDAn4AEMMaoWkiMvJdNue5z
         xmhA==
X-Gm-Message-State: APjAAAWJ8Qag6iUkcrj6ihWocmGuaCRMI1ja90I61QvdCP0ZYJu6qs6c
        2QtXuONK4tkjmceMC5z4vQ==
X-Google-Smtp-Source: APXvYqzhey1oOTnA0w0d9o/KuIH33dNcRfhzSqT0Ru6dq2J5unDcqbcklT5cAwpziCP+n3Kod/dEqg==
X-Received: by 2002:a9d:7a8d:: with SMTP id l13mr12194525otn.351.1570806847891;
        Fri, 11 Oct 2019 08:14:07 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d69sm2726364oig.32.2019.10.11.08.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 08:14:07 -0700 (PDT)
Date:   Fri, 11 Oct 2019 10:14:06 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        enric.balletbo@collabora.com, bleung@google.com,
        gwendal@google.com, drinkcat@google.com, cychiang@google.com,
        dgreid@google.com, tzungbi@google.com
Subject: Re: [PATCH v2 05/10] ASoC: cros_ec_codec: read max DMIC gain from EC
 codec
Message-ID: <20191011151406.GA18450@bogus>
References: <20191005085509.187179-1-tzungbi@google.com>
 <20191005164320.05.Id4657c864d544634f2b5c1c9b34fa8232ecba44d@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191005164320.05.Id4657c864d544634f2b5c1c9b34fa8232ecba44d@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat,  5 Oct 2019 16:55:04 +0800, Tzung-Bi Shih wrote:
> Read max DMIC gain from EC codec instead of DTS.  Also removes the
> dt-binding of max-dmic-gain.
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  .../bindings/sound/google,cros-ec-codec.txt   |  4 +-
>  .../linux/platform_data/cros_ec_commands.h    | 43 +++++++++++----
>  sound/soc/codecs/cros_ec_codec.c              | 53 ++++++++++++++-----
>  3 files changed, 73 insertions(+), 27 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
