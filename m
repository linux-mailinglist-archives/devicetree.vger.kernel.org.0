Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B702311D8F6
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 23:01:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731260AbfLLV7y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 16:59:54 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:42624 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731255AbfLLV7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 16:59:54 -0500
Received: by mail-pj1-f67.google.com with SMTP id o11so112485pjp.9
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 13:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:cc:to:subject:user-agent:date;
        bh=CmXfpguq27944eP1eRHL/S89lr4HkiikW6X9wQMZTak=;
        b=Pl/pUQBmMNlT60swExa6Lc0oNeW8xywtmM0c5iE+6MjRqMLAh/sicSUDhIRtJUFEJF
         LkeK0S+MTgT2BjI+j/Bjr/9clApktvsRn9HX1KIaIChXS/MIG/vKXkv5PgabEjK1dGGE
         PKdVuMVX4sx3mWJ46X6FmpnNqriJ5y4UJ1Ir8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:cc:to:subject
         :user-agent:date;
        bh=CmXfpguq27944eP1eRHL/S89lr4HkiikW6X9wQMZTak=;
        b=RuQEv6U4y11LC2Q0lZxqqaLfjrEOzq5xf3hSeRLDXyNjvfnb4LCcR79136VF8NV/ts
         nXR/Nojqe09FGqcINFYtLr02I3RP7tm2hgtDbqdoNtKW0vXeIZVYISFD7MljLSraJ+Ho
         u+kkQ8cjxLwaQYy+fDIoRcc0bZY5Ots/vC2xVOgYi2J7GxtKWCo+yoa/mUoYNNV3DKNb
         wWJHvklwBqMLsbQ7qornKEUruVPRji5ffqWr9lfvPXvfgji903GW5m3NYqpxK0KwdkYd
         CNely4dqEe9wLddpuE0kq0NeyjATmy2fgnLIrCHOo7kobveoxNPDJ0C4S0m7c54nISEO
         NyBA==
X-Gm-Message-State: APjAAAVCmHvB2x1dgBnSwCDG044rkXPMp69enNXhImOi4Vgf9YnK3Tn/
        gLmAZg2Q+USVIqAcsT3F06qCZg==
X-Google-Smtp-Source: APXvYqyYdeFIttKHtScn51FUQtkOnmir8OiEGe0EwjEvNpgQw9TAoxHuXImKHk2nhWN4iUrT/Ec2Fg==
X-Received: by 2002:a17:902:9a94:: with SMTP id w20mr11523626plp.54.1576187993538;
        Thu, 12 Dec 2019 13:59:53 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id b73sm8519686pfb.72.2019.12.12.13.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 13:59:53 -0800 (PST)
Message-ID: <5df2b859.1c69fb81.3a87e.5ace@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191212113540.6.Iec10b23bb000186b36b8bacfb6789d8233de04a7@changeid>
References: <20191212193544.80640-1-dianders@chromium.org> <20191212113540.6.Iec10b23bb000186b36b8bacfb6789d8233de04a7@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Vinod Koul <vkoul@kernel.org>, Kiran Gunda <kgunda@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>, mka@chromium.org,
        Sandeep Maheswaram <sanm@codeaurora.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Maulik Shah <mkshah@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc7180: Avoid "phy" for USB QMP PHY wrapper
User-Agent: alot/0.8.1
Date:   Thu, 12 Dec 2019 13:59:52 -0800
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2019-12-12 11:35:42)
> The bindings for the QMP PHY are truly strange.  I believe (?) that
> they may have originated because with PCIe each lane is treated as a
> different PHY and the same PHY driver is used for a whole bunch of
> things (incluidng PCIe).
>=20
> In any case, now that we have "make dtbs_check", we find that having
> the outer node named "phy" triggers the
> "schemas/phy/phy-provider.yaml" schema, yelling about:
>=20
>   phy@88e9000: '#phy-cells' is a required property
>=20
> Let's call the outer node the "phy-wrapper" and the inner node the
> "phy" to make dtbs_check happy.
>=20
> Fixes: 0b766e7fe5a2 ("arm64: dts: qcom: sc7180: Add USB related nodes")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Would be good to add phy-wrapper to possible node names in the DT spec
too.

