Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3196F1304CF
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 22:55:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726307AbgADVz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jan 2020 16:55:28 -0500
Received: from mail-il1-f194.google.com ([209.85.166.194]:39985 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726219AbgADVz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jan 2020 16:55:28 -0500
Received: by mail-il1-f194.google.com with SMTP id c4so39430736ilo.7
        for <devicetree@vger.kernel.org>; Sat, 04 Jan 2020 13:55:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=K/EnumApSDmaO9XbzKzz36+u0K1L2iTuLSdvygNUnhs=;
        b=fAjbDygA6BhbJG2PDp9fh+mNtx1z5SPm8UFB8jd9PQp6curtECLFQT7grU8cf4bh/o
         Cic0m1+kgsYkgqIWJOh4I8WbVFLXqNGZsqY1XeLb+dcd9O3of0fV/O+amUWt1XpEInH9
         zWypCfUrtn3RCpbJcGpcy3B6NmMrFj2+Tl74HLEV/ASG2wc6BZbW+MxP75bCMa02L0nn
         smhJUTMTA1QqrTiPPiNCc6yLhP0dEpfon8RIjIwhmiaJgdmlX6Z77iYNb3lfzswDDSyj
         9p0G4GVt6LcPsng/zCLd7TlQBPmi882WLZ5Qf3Kod7leCZ0Dh/zi8ZfGs0U/89hj+ndk
         qNvA==
X-Gm-Message-State: APjAAAXnJcDLBLtokg4VEftnrkrQl0uTyQpXSve0KITGcjqsDjjs08Du
        vrbKPJ8yPOQHgwHqF0Ks2Z1L+UM=
X-Google-Smtp-Source: APXvYqxqrQZmgMxo7zfFDRN46F79/y1MX/r9OZiLrqLHAMfdzTGESQkN3C2OGhV7k8NQfaV+CmH8sw==
X-Received: by 2002:a92:914a:: with SMTP id t71mr83927556ild.293.1578174926916;
        Sat, 04 Jan 2020 13:55:26 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id e1sm22285863ill.47.2020.01.04.13.55.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:55:26 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219a3
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Sat, 04 Jan 2020 14:55:24 -0700
Date:   Sat, 4 Jan 2020 14:55:24 -0700
From:   Rob Herring <robh@kernel.org>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, ulf.hansson@linaro.org,
        linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in
 disable-wp text
Message-ID: <20200104215524.GA28188@bogus>
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191228093059.2817-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 28 Dec 2019 10:30:58 +0100, Johan Jonker wrote:
> There are two identical phrases in the disable-wp text,
> so remove one of them.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Applied, thanks.

Rob
