Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7657113B5DB
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 00:30:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728984AbgANXaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 18:30:14 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:40868 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728982AbgANXaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 18:30:13 -0500
Received: by mail-ot1-f67.google.com with SMTP id w21so14403319otj.7
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 15:30:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fIrwJWeNixjwwvurnQiJ8LKkUrdrIhXQmbfrBg5Oibw=;
        b=CUtVuO4S708aqEN3UzvyiKPnB9w55X1ZeOh/D/Ecm0dJcntkojervAfIjBbaNqeT5v
         xVQN4YdI1cRBGxoejbXjxDw76zl2cBGoSxp7EvrRwfEdoTZklHxJY4nJ1AR0jumAx0GW
         sfMhTPuYEEn+rMTcuahIaDixkac8TFYDwz2YgcJqeAugEQLPfJA9o2BfdJSQ1K/fWbss
         TV/qo+NzeubnrYn0b/39Y/VQjLjeaj2WD1kuLSVYvwX9qI8WER+eAqZFCLx8csiVMcrV
         MwiRC7J1/kV1X084zoSvkGWP7SG1lAW6uQqzVYkYQ1v3CkM2U2V0AbvOoR6RP131+5c4
         IBaQ==
X-Gm-Message-State: APjAAAURI8oc0EtxwygsK2uZPGFPoIleVG31MKuLZMFGMcHDOB90rEUT
        6QFF+YiOl9Afua8/8Itt2NBFcMs=
X-Google-Smtp-Source: APXvYqwmQs8xdcwNbguR+91SPdwWm63TRFnq4UZ+jbYFmmkyXiyi+bOKgFTtFFRpAcntzTXs8Wva1g==
X-Received: by 2002:a9d:21f5:: with SMTP id s108mr716522otb.152.1579044612258;
        Tue, 14 Jan 2020 15:30:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c12sm5119942oic.27.2020.01.14.15.30.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 15:30:11 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220a2e
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 17:30:10 -0600
Date:   Tue, 14 Jan 2020 17:30:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Benjamin Gaignard <benjamin.gaignard@st.com>
Cc:     dmitry.torokhov@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, hadess@hadess.net,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, yannick.fertre@st.com,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: touchscreen: Add touchscreen schema
Message-ID: <20200114233010.GA21560@bogus>
References: <20200108091118.5130-1-benjamin.gaignard@st.com>
 <20200108091118.5130-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108091118.5130-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 8 Jan 2020 10:11:17 +0100, Benjamin Gaignard wrote:
> Add touchscreen schema for common properties
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 2:
> - remove old definition in touchscreen.txt
> - add type for all properties
> - add dependencies between properties 
> 
>  .../bindings/input/touchscreen/touchscreen.txt     | 40 +----------
>  .../bindings/input/touchscreen/touchscreen.yaml    | 83 ++++++++++++++++++++++
>  2 files changed, 84 insertions(+), 39 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
