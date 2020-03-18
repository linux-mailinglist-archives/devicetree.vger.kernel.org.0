Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E5F71897E9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2020 10:29:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727540AbgCRJ3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Mar 2020 05:29:03 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:39123 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727442AbgCRJ3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Mar 2020 05:29:03 -0400
Received: by mail-lf1-f68.google.com with SMTP id j15so19761378lfk.6
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2020 02:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flowbird.group; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xI+nNVteVjSy3ZGdtWuI/tAMjznZhMdLDuHpaHBTc6A=;
        b=SymM6JX3M8rY9bbhScbNhia4a5WFTNME1ETRVETTwmfizUPUHXvQdjS2BcdWjuLHiT
         et0mvFjOuJhBpDEIPymT1vewmNvt8yMS8OkejsRxMFN7Ngi4YwcIcITomJouE1LaT085
         JeGSwQw3C25xiy8b4RgOLL3udu8m7VSExEtP0WysVtH4XNbf+9K0LOnVAmlvJ+G574ss
         qmnYOuGlGJGHPH96D8xznl1/WCAdlXhIYvXf9ig5LWXD/pctUaWlDIJv9cMKCwFbECTY
         JtEfwH7/fjpBTjxhkg/mKd3kfqLivbtIaZRW8PF58oTveVdb9I2WNL0KcTVdxHkTJJrM
         +sSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xI+nNVteVjSy3ZGdtWuI/tAMjznZhMdLDuHpaHBTc6A=;
        b=tRaQM0qaRLM4uVmD7kvbYifPKoxkuSWEa4cdHrIjbF3u8vO79jGHxbFAjEq46/cyeF
         icY9DcoxDUVRGXCHdm0qVtot9OmMBQBU2dUcMpKfqE6XKNRvOKs6V1FlFlfVmRjr+K/y
         T8pwTODCuS+C9hlVMaci7eQeNVerS3p16ZMqxOng4y655oE5Yi/8F2jttPx9JrltoczC
         pLKdMLYberG2jCOJhoVnNoh53q3Ubb/J0G5l8AKU824Z3oJt37HegrEbF1JFO9araEVS
         gqDGiA+E3XaYJmfDWVBbCFbcVwpomokkd02g4QzCVayYwb5qCXB/Og6nR3zt+3oYhfZT
         EQxw==
X-Gm-Message-State: ANhLgQ1W6PLD8d3duSlfE6k5X4a87OIlT7HxUmcDHbEm0Fjt3/PuRQCN
        p75uvhl/Vfjzw1Uj/7u8n7LvZNG4goOQPNQ4Km+K2w==
X-Google-Smtp-Source: ADFU+vt9RaqPeaQFcnibcOYchRkGU43JPFZ+ootd7u1qqbA7zone9+6G7f6jOLdG+HJihZ1J+PXHqkiyj/xrGoYNbZU=
X-Received: by 2002:a05:6512:1054:: with SMTP id c20mr2294611lfb.69.1584523739621;
 Wed, 18 Mar 2020 02:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <1584463806-15788-1-git-send-email-martin.fuzzey@flowbird.group>
 <1584463806-15788-4-git-send-email-martin.fuzzey@flowbird.group> <20200318091734.GA23244@lunn.ch>
In-Reply-To: <20200318091734.GA23244@lunn.ch>
From:   "Fuzzey, Martin" <martin.fuzzey@flowbird.group>
Date:   Wed, 18 Mar 2020 10:28:48 +0100
Message-ID: <CANh8QzzA34th-h8ULM=LNvOvRw9P9=vekOBGvdYjv6TEBNDMig@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: fec: document the new fsl,stop-mode property
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Fugang Duan <fugang.duan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

On Wed, 18 Mar 2020 at 10:17, Andrew Lunn <andrew@lunn.ch> wrote:
>
> You should not be putting registers and values into device tree.
>
> The regmap is fine. But could you add the register and the bit to
> fec_devtype[IMX6SX_FEC], fec_devtype[IMX6UL_FEC], etc.
>

If that's the consensus I can do it that way.

But I should point out that there is already a precedent in mainline for this:

Documentation/devicetree/bindings/net/can/fsl-flexcan.txt

Regards,

Martin
