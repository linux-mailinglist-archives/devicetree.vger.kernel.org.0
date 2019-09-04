Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64183A9705
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 01:22:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730131AbfIDXWA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 19:22:00 -0400
Received: from mail-pl1-f180.google.com ([209.85.214.180]:37740 "EHLO
        mail-pl1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730122AbfIDXV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 19:21:59 -0400
Received: by mail-pl1-f180.google.com with SMTP id b10so334866plr.4
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 16:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:cc:subject:to:from:user-agent:date;
        bh=qMQxm/VRDxP6FZWufG32f5QY5xEFJc2+2imqmF95LA8=;
        b=A19kppI0UbAoVodw+dajW3BnRlspaPQe0dq2835ayW+34cIzwjJYGFM2OrMhC+BZQ8
         ef2IGsUsJXGtanLcTAIivF5OgSmYNQ77EOdzlVawj6BnQn8P64g9aPryd+bQHxDiSXib
         eWs8Ca3xov4mE2S2UvNSQ3ZCXTcl7CTzChe8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
         :user-agent:date;
        bh=qMQxm/VRDxP6FZWufG32f5QY5xEFJc2+2imqmF95LA8=;
        b=hFIULeRIHXVBP38BAKQpaa1tcw0yBnQeblXpHZFUO/gJnJkpYJ5A/qSeT5nr73D2dy
         dOxShK918iaSfEDoZzD5ho4CmXNPhan1mWRhw99LhNgfqELizu+oJBUyttgJ1k23p/XB
         CYaFfd4P38XwoSuplfphMzVaB8ldoKLvXhIMMzwNr6+uSXT4Q8Dqw2Wqd7eGpzcXkzOC
         nJ+aS2iShKzVrQRAd+kuLQZTg1WG1oXxfXFWKN1bAx685a9zTUagyHsyn/K6ay+7rX7K
         BdAH3VC1rVzuN/zS2MnxGtfOFkJwA5nLl5pFS9vLcQZmobCL7+c6Myqx5D3YCdpa/Hop
         jlqA==
X-Gm-Message-State: APjAAAUzsBFiLHjSQZSgS/dhJHx6YtScgUYF02T1/bOSyP3fvWMuT23c
        ZhKCuYE5rdF8IRZ5qFjBtR2hEA==
X-Google-Smtp-Source: APXvYqwxSW1ALdQsQHJPdma+QWYRXG++FjslgBIyc2YnBGqRZIthwIfwVzJXxaUxjvuT2gSlp8UYtQ==
X-Received: by 2002:a17:902:7449:: with SMTP id e9mr292175plt.242.1567639319209;
        Wed, 04 Sep 2019 16:21:59 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id j128sm162678pfg.51.2019.09.04.16.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 16:21:58 -0700 (PDT)
Message-ID: <5d704716.1c69fb81.a404c.0c38@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190904100835.6099-3-vkoul@kernel.org>
References: <20190904100835.6099-1-vkoul@kernel.org> <20190904100835.6099-3-vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: phy-qcom-qmp: Add sm8150 UFS phy compatible string
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Wed, 04 Sep 2019 16:21:57 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Vinod Koul (2019-09-04 03:08:34)
> Document "qcom,sdm845-qmp-ufs-phy" compatible string for QMP UFS PHY
> found on SM8150.
>=20
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

