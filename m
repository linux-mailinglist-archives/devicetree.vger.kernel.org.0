Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0CF52CBC39
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:02:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726819AbgLBMBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:01:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725899AbgLBMBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:01:00 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78139C0613D4
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:00:14 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id q8so3251771ljc.12
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+Pr4aXRxL4+KxlMsXEdnWIU22w73sQ7oorqpnDzXWS4=;
        b=N1hje+/SPa7H5gIZ4+LYxmHuZ3ccp4iGeQkhO5JFmBnSXGzoyf0iac0CHxS7vtGCAo
         IODr7TUk8PMHOFsUj980sBFggvlmUMpj1a/xafgNJtGYK2E4F5wsUidIHH1Zi5FEMS6C
         ttTucEhGeR3XECQ/hs0WV8efvjHaW3wBySg4/kmC8HXFdbDkwYZaEctJmlyeK1I3+Hfk
         10I8GikJ0BFXqKjNya/VZLMkVFjA9+oN00rydLyRHUk10XfKHwDGtmyg8EPR2En6+YFz
         ybFB579fSScW5l7G82yJ6R8hcFNUZ9DV6otdeWDxy24qqRdOyE7nXO17URNwdRpocqWR
         WXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+Pr4aXRxL4+KxlMsXEdnWIU22w73sQ7oorqpnDzXWS4=;
        b=b9oQ+xfaCw5q7ii3ZGNcyNj1RXI/5vNVK1xJGLDm2bv+oKdxAsgZ/AnAjYZ6y6AREF
         fjg/0LWfVouREZJTe7oINg54aEyOqLmk9MUi+bohNraTK19mSEb2tUfjiGLB+fz8RIQm
         Z8arztNUSaickXZspvlwujWTqgsImNiyHMPsz5GqNKCz4op1lOcNn4tBCSBpRP9OKDU0
         /jkrQtqynivspRqWxUW1c3+u5O4OKXyiBiJjdkmZR2f9WNmmBNkY3obhV2w3Cs1Fq7Ye
         cejh/s73sqGacBP93P0Iy8dFCcprinYXWv2Rs7WuTJR9wrBJ8dkaxLVDhC4CQ3SUXxIt
         mAAw==
X-Gm-Message-State: AOAM530s1DVuCRwrp0iaMPvFrE3KuKyZh3qyWDsGotyd7/ri0iqBRlBQ
        8uZonYntpg1B4Uqic14Eag3NsCOUYyCqxz9uk21rGQ==
X-Google-Smtp-Source: ABdhPJx1AtpFBCfPK4SoIuG4Y/AiCKba3Z+76AWPhNbei9pHvO22Ldx9c1MwY8xvE0yiWHvEKza+ErzIexaypVubdfg=
X-Received: by 2002:a05:651c:39d:: with SMTP id e29mr952043ljp.144.1606910412428;
 Wed, 02 Dec 2020 04:00:12 -0800 (PST)
MIME-Version: 1.0
References: <20201202093322.77114-1-stephan@gerhold.net>
In-Reply-To: <20201202093322.77114-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 2 Dec 2020 13:00:00 +0100
Message-ID: <CACRpkdZ1P-+tg152FFk-9y3sGz9Hbfi8B3HnC6UZx55mFVfGFA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: iio: magnetometer: bmc150: Document
 regulator supplies
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "H . Nikolaus Schaller" <hns@goldelico.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 2, 2020 at 10:33 AM Stephan Gerhold <stephan@gerhold.net> wrote:

> BMC150 needs VDD and VDDIO regulators that might need to be explicitly
> enabled. Document support for vdd/vddio-supply to implement this.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
