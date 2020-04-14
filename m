Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD3681A8A44
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:53:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504464AbgDNSwg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:52:36 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:34143 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504414AbgDNSwd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:52:33 -0400
Received: by mail-ot1-f65.google.com with SMTP id m2so803888otr.1
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:52:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ffzxDlgphbZXBktrRhbbNGpwdttblbyl/hILCZIxaKw=;
        b=VNqeDP9ePZfU8SKowYJ0XPrXg/QzEaJTrhe/7qemufdpWqMhQtaOqMICxucYWIos0Q
         ULFv/juMvVZ4FBeYK+vAkGl//wh2w289+uQTaP2FA+aoOlVfAWlcWbqOK+MDgfNHczf1
         7ROO+8l9HndRsbhSeK9D6akN/xTfb3NeiLNSrFH1bBnAVRRtALDrYNbSaVKzvAiysVu5
         sbFdHwl0avlhg5mQLFtFpc2y4Vb+6bwys68jbvfyjxx5fhdBrZ/nrDQNj8utEYwVjqPM
         r7Vwt3Av/EEmvkjzGb6gBXMEjyCOnrXAfa1eGrVGnRcpIe4N5he+uNNmurhLkKj9Crjv
         7Xvw==
X-Gm-Message-State: AGi0PubTUc1PytviltiyUOPQ86XlGpMXLLUw5miGGxqtEGvKE1vPtjA1
        OZ0FOfJ26hYTnDOxxexxyVNUzMo=
X-Google-Smtp-Source: APiQypK9bAPVENbT5XIK/PsRZiM3V54qJ/IgN+OTh2Senbkkz2Wefs9R5BhtAYCwQ03a/Kb476Yptg==
X-Received: by 2002:a9d:525:: with SMTP id 34mr19030057otw.80.1586890352020;
        Tue, 14 Apr 2020 11:52:32 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y11sm3415599oos.10.2020.04.14.11.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:52:31 -0700 (PDT)
Received: (nullmailer pid 6692 invoked by uid 1000);
        Tue, 14 Apr 2020 18:52:30 -0000
Date:   Tue, 14 Apr 2020 13:52:30 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 26/36] dt-bindings: display: convert sony,acx565akm to
 DT Schema
Message-ID: <20200414185230.GA6635@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-27-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-27-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:59 +0200, Sam Ravnborg wrote:
> v2:
>   - drop use of spi-slave.yaml (Maxime)
>   - add unevaluatedProperties (Maxime)
>   - rename node in example to panel (Rob)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../bindings/display/panel/sony,acx565akm.txt | 30 ----------
>  .../display/panel/sony,acx565akm.yaml         | 57 +++++++++++++++++++
>  2 files changed, 57 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/sony,acx565akm.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
