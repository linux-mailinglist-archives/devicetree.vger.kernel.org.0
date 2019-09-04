Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A73A0A9701
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 01:22:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729471AbfIDXVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 19:21:44 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:33687 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727789AbfIDXVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 19:21:44 -0400
Received: by mail-pl1-f194.google.com with SMTP id t11so350851plo.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 16:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:cc:subject:to:from:user-agent:date;
        bh=ULpSeBhDFHW/Z7ALGDxp4P/kWpUMLgBqKrrXb0VWOMQ=;
        b=Qj6RRzQfU3bz20/IIbWSW7pEUG/VayrDOEKhxX6jYW4QID/DaDB6mFdzI/sGD64oY6
         m9yWTXvuG1j0T+eZOi8vCDxYebBRADyBulDjQZEvjT2r32XetSUBQufzrSYAX0slQITa
         ZzB9NBVM9QAnIxsuJ4Pub4DKBRy/lU1wAPVJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
         :user-agent:date;
        bh=ULpSeBhDFHW/Z7ALGDxp4P/kWpUMLgBqKrrXb0VWOMQ=;
        b=rfY2+3Akv+WLutK/WqavHt0oX9IqPckgHuKk9OqEZq9DKi6mfcTfywasrHgAe7VSDP
         5hYTjsRyxEg6tnXGiY5Y6C+vfPkFPYEyFS9Hgl7dF/eYAFIY7rf5FTkeiNS1WfK4f77N
         43kQJjGLlMAUZxv26/9qqE8Znx2bot5G4JQVj+tl/OYCHf4/ngSUQgu6Qqjyn8Umqlvn
         c7dUDOLwSbLFOibkmp5MT4Pt5V3r6rtwc97GKnkUOfIv6bXhxVamL9OThnTHwVz57hBK
         Nts/XL0YA5EohioRLX8pnc7q6wkwSS6M2q/ZtCnd6RWQoz0sPDM1r0xYs9UM31Qx2jrM
         ytkg==
X-Gm-Message-State: APjAAAVYA3irI+CfSiED5bq6dhBgCvdukary3KAW88MZbcnLRxbK4w4K
        T848lBpT8T8/uM0fL5V2zVFZyA==
X-Google-Smtp-Source: APXvYqwX0L/kKM6d91lqvHvx4evD1/Fc65jO689+1S9fNksh5eYf5k2DOvZ/YB5CrUW5vLdYMLynIw==
X-Received: by 2002:a17:902:aa03:: with SMTP id be3mr310025plb.84.1567639303914;
        Wed, 04 Sep 2019 16:21:43 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id t6sm188653pgu.23.2019.09.04.16.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 16:21:43 -0700 (PDT)
Message-ID: <5d704707.1c69fb81.3e1cc.0e50@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190904100835.6099-2-vkoul@kernel.org>
References: <20190904100835.6099-1-vkoul@kernel.org> <20190904100835.6099-2-vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Evan Green <evgreen@chromium.org>,
        Can Guo <cang@codeaurora.org>,
        Stanley Chu <stanley.chu@mediatek.com>,
        Subhash Jadavani <subhashj@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/3] dt-bindings: ufs: Add sm8150 compatible string
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Wed, 04 Sep 2019 16:21:42 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Vinod Koul (2019-09-04 03:08:33)
> Document "qcom,sm8150-ufshc" compatible string for UFS HC found on
> SM8150.
>=20
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

