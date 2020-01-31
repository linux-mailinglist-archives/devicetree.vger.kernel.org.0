Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD0B814EE4A
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2020 15:23:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728752AbgAaOXK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jan 2020 09:23:10 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:36224 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728730AbgAaOXJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jan 2020 09:23:09 -0500
Received: by mail-ot1-f67.google.com with SMTP id g15so6724969otp.3
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2020 06:23:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PxMeFzkOsZfzvlj1E/GqrVrfLq2JwIzh0NLeWA9Dicc=;
        b=CxmMEeJEVWN7ohxJQMxwZOxEVBOn8JNsBQQQJtW7amhXXw1Ke1uKhRtuVIDmidl/Yb
         zndHbAp+0I0jebvlsVUwjEM0HaOsHu78Wwn2q7owzpvq3a2CXK/E5BETuEDvfwB/tqkt
         e1cBMbG7BlaBMs/73AeAphAOOr21bp0DatBI1WO8sKuJUy6GyHuMpGlpHx/tH+XxkyhT
         68v7GmsbmtVH3v2+QhAEgqK9pC2TzIoIJ03JIJ49pH8g20HF44hkinwkrf26hP3cx7Wk
         aXFhzAo8dCjxdqghHhXRJDE05s4JpM113Iro2kkpmTtyTlrMUypMq6jr9V8d4k4NlzSC
         6H+Q==
X-Gm-Message-State: APjAAAWifaIaGb6WpgSdhu2FKFmXM8lsePbqHJvp9mfagUynpTXkmz+x
        cG1aNNuMs5QAmn0uyw3zAw==
X-Google-Smtp-Source: APXvYqzbha/ycL5MajoXxSDh1B5G7/y41e7NeKsIZddrNIh8p5A46V6ONoTNhVOF1NvK7fkbx6+A4w==
X-Received: by 2002:a9d:370:: with SMTP id 103mr1920211otv.103.1580480589112;
        Fri, 31 Jan 2020 06:23:09 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e5sm258654otk.74.2020.01.31.06.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2020 06:23:08 -0800 (PST)
Received: (nullmailer pid 3810 invoked by uid 1000);
        Fri, 31 Jan 2020 14:23:07 -0000
Date:   Fri, 31 Jan 2020 08:23:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
Cc:     noralf@tronnes.org, Sam Ravnborg <sam@ravnborg.org>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: add binding for tft displays based
 on ilitek,ili9486
Message-ID: <20200131142307.GA679@bogus>
References: <cover.1580134320.git.kamlesh.gurudasani@gmail.com>
 <a37d95cbfc9603265ed15916cdd2fb69e8c5f041.1580134320.git.kamlesh.gurudasani@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a37d95cbfc9603265ed15916cdd2fb69e8c5f041.1580134320.git.kamlesh.gurudasani@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 27 Jan 2020 19:56:14 +0530, Kamlesh Gurudasani wrote:
> This binding is for the tft displays based on ilitek,ili9486.
> ozzmaker,piscreen and waveshare,rpi-lcd-35 are such displays
> 
> Signed-off-by: Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
> ---
> 
> v2 changes:
> * Changing file from txt to yaml format
> * removed ilitek,ili9486 from compatible string
> 
> v3 changes:
> * no changes
> 
> v4 changes:
> * no changes
> ---
>  .../bindings/display/ilitek,ili9486.yaml           | 79 ++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9486.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/ilitek,ili9486.example.dt.yaml: display@0: compatible: ['waveshare,rpi-lcd-35'] is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/ilitek,ili9486.example.dt.yaml: display@0: compatible: ['waveshare,rpi-lcd-35'] is too short
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/ilitek,ili9486.example.dt.yaml: display@0: compatible:0: 'waveshare,rpi-lcd-35' is not one of ['ozzmaker,piscreen']

See https://patchwork.ozlabs.org/patch/1229867
Please check and re-submit.
