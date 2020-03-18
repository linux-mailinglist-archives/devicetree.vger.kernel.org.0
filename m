Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6930D18A17C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2020 18:25:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726911AbgCRRY7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Mar 2020 13:24:59 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:40523 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726912AbgCRRY6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Mar 2020 13:24:58 -0400
Received: by mail-pl1-f194.google.com with SMTP id h11so11468071plk.7
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2020 10:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=rRLYiVDNdoFKaz44hzKF+TYh+5BDTb1jEIAXmQ8LTpM=;
        b=nShgZuGYvfg/lm0eV6nf2boUKEIhzQmCDFJo5lIjTLtvcWJ43RSDwt2OkCjpmiwmg7
         QIUuMhTV3krbGiQsBuNsy3XkcD2oh3Y5GbCkaeb9Amy2ocmr3I+788/SVSzDoiFAg65k
         P7DpdggDgYopjZCY86UzGa6uO3Jl9VhjFvsHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=rRLYiVDNdoFKaz44hzKF+TYh+5BDTb1jEIAXmQ8LTpM=;
        b=RYNaml4/EvTMefSnnwxcvQZns9G/eqGdMWLoPYSdQ6aEoVEqQ+G5jl0CeTORLu+rx8
         1TgQA5nXelAuAYp1f7Dt8/yXaftL/ceKq5ZsF8eH85YlyRHvkNib8a7dsasMCM8FhvmK
         mWlBCS3siX1MAlYHXQsjIdxiTukTGg2BzQWdEnIWYs1Bh0g/vei4PyV4vSf7fsQdbYLd
         5HxE4u+oYPZ1fG+jOFhfnBoBUIFXMjBlzck0tNLyJT+5Dp2Bx90rVD3Eq1jxfpFkKtOa
         GacwvgC+TSiTDpjmmsQxFJYPHZ0ooZVhmKjEQydSFbUiMUxOpOp3YygWxiSaXVhHwSwt
         LlmQ==
X-Gm-Message-State: ANhLgQ3PhLhPDgtvGqH4ZAF1rDJ0UIfWPXf41afXDOO0R4BtWoiRgifV
        qHHeG7Jt9lCr/2CoA3ThsKaMts7O/Rg=
X-Google-Smtp-Source: ADFU+vsL6KLzScjymJt4WsBhfm+VpoTPWtgYlDZySTyomnvSnr/Veib9XWetxg0wOC/I0+mnxFfLJQ==
X-Received: by 2002:a17:902:b582:: with SMTP id a2mr4780076pls.176.1584552297314;
        Wed, 18 Mar 2020 10:24:57 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id y125sm7486177pfy.195.2020.03.18.10.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 10:24:56 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2526d2b2907116d1bb6f7edd194226eb7e24c333.1584516925.git.amit.kucheria@linaro.org>
References: <cd0f3d35ca0fc2944fd97e030a28318ff82dd5c1.1584516925.git.amit.kucheria@linaro.org> <2526d2b2907116d1bb6f7edd194226eb7e24c333.1584516925.git.amit.kucheria@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7180: Fix cpu compatible
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org
To:     Amit Kucheria <amit.kucheria@linaro.org>,
        Andy Gross <agross@kernel.org>, bjorn.andersson@linaro.org,
        dianders@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibis@codeaurora.org
Date:   Wed, 18 Mar 2020 10:24:56 -0700
Message-ID: <158455229603.152100.18101475238223716722@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Amit Kucheria (2020-03-18 02:08:17)
> "arm,armv8" compatible should only be used for software models. Replace
> it with the real cpu type.
>=20
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---

Maybe add a fixes tag too?

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
