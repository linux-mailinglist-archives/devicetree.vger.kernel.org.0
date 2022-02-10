Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D1E04B02D0
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 03:01:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233812AbiBJB6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 20:58:18 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:60092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233403AbiBJB5W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 20:57:22 -0500
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6745B2BB3B
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 17:55:14 -0800 (PST)
Received: by mail-oo1-xc30.google.com with SMTP id o128-20020a4a4486000000b003181707ed40so4625823ooa.11
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 17:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=dlJhRUB01qZhsIVXIk2dwYqihYxKbJJNnkUeg5WkvEQ=;
        b=jqEM46I7RIpOv6Dkxw9TpDQEzfSMQUsHfWjfCF5R1hPNJotrhb4Hfvk9+dGhmfKApj
         +tj8cpWNtVh8qXkYopCvZcUdjJsZe3FyUvDPDzzCXvx+Oqb6TBj6gc/T9MGLB2oTBy5K
         rXt8rxgL2hjvC7PB90SynvANEC3ghpyWEBImk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=dlJhRUB01qZhsIVXIk2dwYqihYxKbJJNnkUeg5WkvEQ=;
        b=In18JP2eb2LFPyQJHJ0oRU2dbZX1rtT1YlOovF+w/N7Ml6LH6o1PqY11iXaUXJDmHL
         UB5XXJibxXZ0BFOCcJOvXBPbcIglIoZe0TVBy9VoWP31slvhE19IWRNdc3Ip6NjaPYv0
         xLba0CGxAniFb6ms8i3jTnOCp2TZdWZ8AUqmykx//HiG3uk0d6AqFNYLO2FZ3poHh3ol
         CxOcQyI3+m56ZllGmRcuE/okGXkfyzra9P14NsbLYwKGq5NNyL8DWGJ8FDlnlFsDLXhW
         skTlcVze/WZNBWBqADc9kP7nQclOYnaIilr/hC+2HreYy71l2OvPtXUJLdstTSdjlmPt
         N9hA==
X-Gm-Message-State: AOAM532j+KbJUudIAzYDr8hWFKFKmsT8TdKG8Z4hTIfhlMQwWSQmTEsd
        KG95ep68ROaDPtjallIAyZEc1ZyWhJPD6rGJ5Ral+WbK0Xo=
X-Google-Smtp-Source: ABdhPJzKZSUzft7pAYTMnnD+ET8CryZqIpC5vdW5rpze6mP8SDxIf5u1xXG74DImb5hLX73mc2qCjE47u65UInz2yIk=
X-Received: by 2002:aca:df82:: with SMTP id w124mr2220442oig.112.1644451553163;
 Wed, 09 Feb 2022 16:05:53 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 9 Feb 2022 16:05:52 -0800
MIME-Version: 1.0
In-Reply-To: <c17e95f7-9c42-657a-8525-3937d4b27fb8@quicinc.com>
References: <1644334454-16719-1-git-send-email-quic_srivasam@quicinc.com>
 <1644334454-16719-3-git-send-email-quic_srivasam@quicinc.com>
 <CAE-0n52LGY2amCKo+40D4BoSsANs7JeQ0t_4QfeXNC5q64Ccwg@mail.gmail.com> <c17e95f7-9c42-657a-8525-3937d4b27fb8@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 9 Feb 2022 16:05:52 -0800
Message-ID: <CAE-0n51o3ohrVO-HCeVOTz=JwePA63yMrNpFsY4sFOiv6rQwEA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sc7280: add lpass lpi pin
 controller node
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-02-09 06:01:21)
>
> On 2/9/2022 2:41 AM, Stephen Boyd wrote:
> > Quoting Srinivasa Rao Mandadapu (2022-02-08 07:34:13)
> >> +                       data {
> >> +                               pins = "gpio7";
> >> +                               function = "dmic1_data";
> >> +                               drive-strength = <8>;
> >> +                               input-enable;
> >> +                       };
> >> +               };
> >> +
> >> +               dmic01_sleep: dmic01-sleep-pins {
> >> +                       clk {
> >> +                               pins = "gpio6";
> >> +                               function = "dmic1_clk";
> >> +                               drive-strength = <2>;
> >> +                               bias-disable;
> >> +                               output-low;
> >> +                       };
> >> +
> >> +                       data {
> >> +                               pins = "gpio7";
> >> +                               function = "dmic1_data";
> >> +                               drive-strength = <2>;
> >> +                               pull-down;
> >> +                               input-enable;
> > Why does input-enable matter? It's not a gpio.
> Actually the same is fallowed in sm8250.dtsi. Verified without it and
> working fine. Need take call on it.

Is that because the pin is already an input by default? What does gpio
debugfs say for this pin? Does it also work if you make it
output-low/output-high here? I thought that the gpio itself isn't muxed
out to the pad unless the function is "gpio" so I hope the input/output
settings have no effect here.
