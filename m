Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 806C71E65B7
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2020 17:16:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404317AbgE1PQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 May 2020 11:16:31 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:33074 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404316AbgE1PQ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 May 2020 11:16:28 -0400
Received: by mail-io1-f66.google.com with SMTP id k18so30433478ion.0;
        Thu, 28 May 2020 08:16:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=SK1AraOAAlqE21Qv8uTbFSbwYc166rll0a90faCZX3A=;
        b=n2Ni6MA9ApkNFpOWC8AuIg6j0ezi/T+RdJBQ5Ks3GvO2GJizgq+t3Qq63iYY65HhbM
         mY7k8jYZINkqrOPQcn+eeYWP3ab0dIxhKx25u3Aq98Xaow1xn6AVzKnwMIY2uqZOIX27
         g8SrYbsCG1pV060qKH2NTpKG/tcO0Qyq3vkTDIxiZyMhS47uP9MhruVAgZ6m0Z9UURJT
         Tzbu7ioezCK4+PwcoFRXHUlfiqwFDrNu6jbEDoljnNmxUgMfK5mKFYSk8hgnqFpYc3iR
         krxUzV3WHRe4zkaAHhJtLczTlggAxcrdPqoiNoXV9VSh5F2dPvNfWSfN+NqXWxQtWsyK
         PTlw==
X-Gm-Message-State: AOAM533dtlKrz0QObif225WMslsdTI3yC8A2QFTo0EYYwYXyfgN0x+MC
        UNmN6cHsntUGMqtaEyXbqw==
X-Google-Smtp-Source: ABdhPJzmgPWUpkGPyzRGjKihzjiiWgeQjD31EW0rWTqKLz0Ks44iHfmJ3jSZTagSQSChiX3iKeEzJw==
X-Received: by 2002:a02:3002:: with SMTP id q2mr2972953jaq.19.1590678987065;
        Thu, 28 May 2020 08:16:27 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id j9sm3295362ilr.18.2020.05.28.08.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 08:16:26 -0700 (PDT)
Received: (nullmailer pid 87549 invoked by uid 1000);
        Thu, 28 May 2020 15:16:25 -0000
Date:   Thu, 28 May 2020 09:16:25 -0600
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: auxdisplay: hd44780: Convert to json-schema
Message-ID: <20200528151625.GA87494@bogus>
References: <20200514113003.19067-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200514113003.19067-1-geert@linux-m68k.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 May 2020 13:30:02 +0200, Geert Uytterhoeven wrote:
> Convert the Hitachi HD44780 Character LCD Controller Device Tree binding
> documentation to json-schema.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  .../bindings/auxdisplay/hit,hd44780.txt       | 45 ---------
>  .../bindings/auxdisplay/hit,hd44780.yaml      | 96 +++++++++++++++++++
>  2 files changed, 96 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/auxdisplay/hit,hd44780.txt
>  create mode 100644 Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
> 

Applied, thanks!
