Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E2E31F4961
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2020 00:31:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728226AbgFIWbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jun 2020 18:31:04 -0400
Received: from mail-il1-f194.google.com ([209.85.166.194]:37786 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728191AbgFIWbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jun 2020 18:31:04 -0400
Received: by mail-il1-f194.google.com with SMTP id e11so55423ilr.4
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2020 15:31:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=vYoeWWotqh93ig2BYtJAr3lGDAZI+A0/XOPu+XE+VYs=;
        b=KSYi5pNwuDUsAWJeciCbyJLmZllG4vH2lAcNjN+NA7O+PLOHxYx4evuUxc+3nhSiQJ
         7irDli/vONA9YkSWY0AOKG4h9kjWTBUSNuTawDRAAwewaOgoVgFyCKL6kw/dteSE8DSP
         q6mkpOGOWNTy/VAU1aD+oqWigYMPYUX7KxAITGqk4gOhfQd5bb1srN8QRzMK9RyAFB34
         NC6LtL3V6EhK8wqYnRbOGyf8EmPhXZvsDqQIn2JSnbLhxNqsS/rMuUDTlkrPEHPoXs4D
         mEGsPolwrogcqp2VI9ddnea7fMefQhd8i4RzgKbgRy009xBvZVNZCdtgCcFO0Gedqeiy
         LeSw==
X-Gm-Message-State: AOAM532WlnPEY9NV+DovPgp0IByVJYA7bJ7DRCsHy/5DBMKq6BSaYL/q
        NmnJsauUfyNn3cR4KXqEBw==
X-Google-Smtp-Source: ABdhPJwWpAiV5EGKt7CuKPY/553uptexohIYjy37PNgvS4XgGdCOYFUKmhhe40UdXuL1Ryen5omTpQ==
X-Received: by 2002:a92:2a0c:: with SMTP id r12mr191984ile.275.1591741863507;
        Tue, 09 Jun 2020 15:31:03 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id l16sm1273481ilm.58.2020.06.09.15.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2020 15:31:02 -0700 (PDT)
Received: (nullmailer pid 1618083 invoked by uid 1000);
        Tue, 09 Jun 2020 22:31:01 -0000
Date:   Tue, 9 Jun 2020 16:31:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org,
        =?iso-8859-1?Q?S=F8ren?= Andersen <san@skov.dk>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v1 1/6] dt-bindings: panel: add Seiko 70WVW2T 7" panel
Message-ID: <20200609223101.GA1618026@bogus>
References: <20200601083309.712606-1-sam@ravnborg.org>
 <20200601083309.712606-2-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200601083309.712606-2-sam@ravnborg.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 01 Jun 2020 10:33:04 +0200, Sam Ravnborg wrote:
> Add compatible for Seiko Instruments 7" TFT LCD.
> This panel is a dumb panel that matches the panel-simple binding.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: S�ren Andersen <san@skov.dk>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
