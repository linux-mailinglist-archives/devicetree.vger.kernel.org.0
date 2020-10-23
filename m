Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBC4A297554
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 18:54:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S461361AbgJWQyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 12:54:09 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:39130 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S461355AbgJWQyJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 12:54:09 -0400
Received: by mail-ot1-f68.google.com with SMTP id o14so1962714otj.6
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 09:54:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=uVV/TugpaLg3zGQE0lqu+QNVXIic1b9xyxbeiJFQEcw=;
        b=Le1rHbrTU1V0Dk0AVUKaKdFq2FrO3scsuCrOQxrgwUmHT9Wq9lsInrU+pRmLH3iaoH
         R/AtXOgq3IGBdvxpGeUopj2EZS5k9hYYjC5Q/CkVkha9U4lFJPk6hasuYQ1nOd/3CZgT
         dRihoVtroNwi3+OQd+MBxAMzlyf5ysdPUah6dM9Ld9DcXu1oHKUCdZRbBhteexWFuD+v
         rpdQ/ujjbxjexN9BoI2eEASyWgkDpFr4SutnNdku3dnc7gTXWq6WpKIlYYjgm/n0AKnP
         L6moptQ1CyWLK883dHE1NebnDrl6slttUKZR8cljIMFwiXFaVYXWqShVQsvVrWVvF5wv
         5FMA==
X-Gm-Message-State: AOAM532Kftld3TCUdR/QeEhB2+3qLMAzzYZDLe6KC/HVOXOpDYuXTxI9
        BQg6ZiQLhCKXR41DzLifGQ==
X-Google-Smtp-Source: ABdhPJzEniJ/5XYjRwdBRYvcaau4LrjdGazGTomAfEz9EILUfMEn/uzlPI77cX8TU+OIMq4hkfvrEQ==
X-Received: by 2002:a9d:22e4:: with SMTP id y91mr2384128ota.72.1603472048725;
        Fri, 23 Oct 2020 09:54:08 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m10sm496078oon.27.2020.10.23.09.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 09:54:08 -0700 (PDT)
Received: (nullmailer pid 2857951 invoked by uid 1000);
        Fri, 23 Oct 2020 16:54:07 -0000
Date:   Fri, 23 Oct 2020 11:54:07 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     enric.balletbo@collabora.com, sjg@chromium.org,
        cychiang@chromium.org, bleung@chromium.org, groeck@chromium.org,
        dianders@chromium.org, dmitry.torokhov@gmail.com,
        devicetree@vger.kernel.org, kernel@collabora.com,
        tzungbi@google.com
Subject: Re: [PATCH v3 2/3] dt-bindings: input: convert cros-ec-keyb to
 json-schema
Message-ID: <20201023165407.GA2857894@bogus>
References: <20201021114308.25485-1-ricardo.canuelo@collabora.com>
 <20201021114308.25485-3-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201021114308.25485-3-ricardo.canuelo@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Oct 2020 13:43:07 +0200, Ricardo Cañuelo wrote:
> Convert the google,cros-ec-keyb binding to YAML and add it as a property
> of google,cros-ec.yaml
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/input/cros-ec-keyb.txt           | 72 ---------------
>  .../bindings/input/google,cros-ec-keyb.yaml   | 92 +++++++++++++++++++
>  .../bindings/mfd/google,cros-ec.yaml          |  3 +
>  3 files changed, 95 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/cros-ec-keyb.txt
>  create mode 100644 Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> 

Applied, thanks!
