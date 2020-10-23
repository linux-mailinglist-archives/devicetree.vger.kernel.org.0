Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07382297556
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 18:54:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S461362AbgJWQy0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 12:54:26 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:44604 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S460677AbgJWQy0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 12:54:26 -0400
Received: by mail-ot1-f67.google.com with SMTP id e20so1942124otj.11
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 09:54:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=BCN0j0EBCQf4oivIRMujCwhlSg44edPFlcMUtXUeBQY=;
        b=QrwGC+zvAkvr7FGa4ekAq5eFae1ydGfzvrjoKYCQSFCvmNyv9NPeyDWRXcbLQmZiTM
         PW5sT4IAkfcaGR8WRVvfEupzictQoVStclD5HNdFZKpg03k/1I2LScnUjXGPidoBUGwj
         JH1Zyj+c9oM3/hOp2j/h/P6EgtkPdj5YKNdfifQ+1bQYtmFZGAt2xyrD7Dn849zOP4Mj
         Rb7BmLLeTimAyf4yW+3Nd9uxL0xLTazgHD72ceDNO/m9oNp/Aek6e26mPxEOljisqNpD
         gU4+GCUmHLn5AZDAEPnezUDfXdQ7puyCOUox/WZiDRMyS/9bL8nbILlfr0Inc3Y/VQi7
         po9w==
X-Gm-Message-State: AOAM532xGOUb5Nj0xeP3PmiW7E76+YrY+r0m+qSN9Llg8PC7S8YIIwhg
        Fadv0nVQc0/Prxx0HDad0w==
X-Google-Smtp-Source: ABdhPJw1+WzDZKN1AWE0qelW5C0rNcELqw7LDqtcW9TSFOtJ4MHpLoMfv935555ODCV5Q8kD9KdpqA==
X-Received: by 2002:a9d:4809:: with SMTP id c9mr2530292otf.209.1603472065462;
        Fri, 23 Oct 2020 09:54:25 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w15sm533068otk.19.2020.10.23.09.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 09:54:24 -0700 (PDT)
Received: (nullmailer pid 2858481 invoked by uid 1000);
        Fri, 23 Oct 2020 16:54:24 -0000
Date:   Fri, 23 Oct 2020 11:54:24 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     kernel@collabora.com, groeck@chromium.org,
        dmitry.torokhov@gmail.com, bleung@chromium.org,
        dianders@chromium.org, cychiang@chromium.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        tzungbi@google.com, sjg@chromium.org
Subject: Re: [PATCH v3 3/3] mfd: google,cros-ec: add missing properties
Message-ID: <20201023165424.GA2858408@bogus>
References: <20201021114308.25485-1-ricardo.canuelo@collabora.com>
 <20201021114308.25485-4-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201021114308.25485-4-ricardo.canuelo@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Oct 2020 13:43:08 +0200, Ricardo Cañuelo wrote:
> Add missing properties that are currently used in the examples of
> subnode bindings and in many DTs.
> 
> Also updates the example in sound/google,cros-ec-codec.yaml to comply
> with the google,cros-ec binding.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/mfd/google,cros-ec.yaml          | 42 +++++++++++++++++++
>  .../bindings/sound/google,cros-ec-codec.yaml  | 26 +++++++-----
>  2 files changed, 58 insertions(+), 10 deletions(-)
> 

Applied, thanks!
