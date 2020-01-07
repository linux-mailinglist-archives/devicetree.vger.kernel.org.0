Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 661AB1326EC
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2020 14:01:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728080AbgAGNBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jan 2020 08:01:44 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36249 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727834AbgAGNBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jan 2020 08:01:44 -0500
Received: by mail-wm1-f66.google.com with SMTP id p17so19296725wma.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2020 05:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=rsd4WxHtfQsVDCvn7FcjJVFWrx0QIgf8GxfkAbKjofQ=;
        b=t57Lq1k++t+1RObQ6sShnQgRverizUkmwShdSCnRt9lpDnO9ae7437MuvUAIXbrJ13
         INGbLEg/mxAp0Az+JMD+P/LXln2x3nRQtn89tWSipX+cmE+giYUSjw0azjchIbqEeXIA
         R3TnAzO/6tD73X3mZ06to1NKqGSM3dHV/KGpDlk4tr6qx0f4a88uNKIImQky61zgNluh
         m81wnD2SGnhdCbhdcms6156P5FWQ/5m4g4IiqvvyrmPPgt2N3eOvI69cXoZu6ZoULuBM
         b3lt43QWtL5G69mqtICN/BNHVuJAmOvp8aKuMAC8M1AJIn1u503vbmdmafHh6WyaQRzt
         jF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=rsd4WxHtfQsVDCvn7FcjJVFWrx0QIgf8GxfkAbKjofQ=;
        b=DwPvqZopMEsdOg9I+tryPim17gD06AdbpTxxuhMirX7IUcqGOQ/0NEVdHYbUwVEouH
         jfxqAe7X7mhExKechfDS7qFma2o/ng9G7WKzwg47+Tghnv9scmIwEtnRy5Ald1llyuAw
         sxcpDVmJ+YCpSZCNnsM07BA30wzecmujTIehzLgbzXUfwXcgjdRtr6kcA+hoUljFStgV
         gHm+MLw1Lmxg97Vzk1F2O/JUNkDUe2lvYYf1CqEBHmBLE4oKYOBfpC11JSPDWvGVP2eO
         +c1WIMEKrnBLnu+mHptaEobUveU/qIOybmn3/0QsLazaaxV1JgMAJD+pEt7GuryIyrHq
         oH8g==
X-Gm-Message-State: APjAAAVhUsythsJZVxjDUxj6dKFoo0EdgYqUFKrikT7MMTUG/2HK6OgK
        AwuU0HYiQn3pDwYhZ4X4LracQg==
X-Google-Smtp-Source: APXvYqwMlqIbVKT8/8AOvzjJhmb6FM38WJc7sDo3lwZDlIiVfkTWsJRI+dWlgGyRqgxg/h7EevIgaA==
X-Received: by 2002:a1c:2187:: with SMTP id h129mr41447568wmh.44.1578402102060;
        Tue, 07 Jan 2020 05:01:42 -0800 (PST)
Received: from dell ([2.27.35.135])
        by smtp.gmail.com with ESMTPSA id r15sm26449932wmh.21.2020.01.07.05.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 05:01:41 -0800 (PST)
Date:   Tue, 7 Jan 2020 13:01:55 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     mazziesaccount@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: bd718x7: Yamlify and add BD71850
Message-ID: <20200107130155.GK14821@dell>
References: <20191227111235.GA3370@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191227111235.GA3370@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 27 Dec 2019, Matti Vaittinen wrote:

> Convert ROHM bd71837 and bd71847 PMIC binding text docs to yaml. Split
> the binding document to two separate documents (own documents for BD71837
> and BD71847) as they have different amount of regulators. This way we can
> better enforce the node name check for regulators. ROHM is also providing
> BD71850 - which is almost identical to BD71847 - main difference is some
> initial regulator states. The BD71850 can be driven by same driver and it
> has same buck/LDO setup as BD71847 - add it to BD71847 binding document and
> introduce compatible for it.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
> 
> changes since v1:
> - constrains to short and long presses.
> - reworded commit message to shorten a line exceeding 75 chars
> - added 'additionalProperties: false'
> - removed 'clock-names' from example node
> 
>  .../bindings/mfd/rohm,bd71837-pmic.txt        |  90 -------
>  .../bindings/mfd/rohm,bd71837-pmic.yaml       | 236 ++++++++++++++++++
>  .../bindings/mfd/rohm,bd71847-pmic.yaml       | 222 ++++++++++++++++
>  .../regulator/rohm,bd71837-regulator.txt      | 162 ------------
>  .../regulator/rohm,bd71837-regulator.yaml     | 103 ++++++++
>  .../regulator/rohm,bd71847-regulator.yaml     |  97 +++++++

Can you split these out per-subsystem, so that I can apply the MFD
changes please?

>  6 files changed, 658 insertions(+), 252 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd71847-pmic.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/rohm,bd71837-regulator.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/rohm,bd71837-regulator.yaml
>  create mode 100644 Documentation/devicetree/bindings/regulator/rohm,bd71847-regulator.yaml

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
