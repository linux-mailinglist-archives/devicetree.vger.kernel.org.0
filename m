Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6233F700A4C
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 16:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241547AbjELOaR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 10:30:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241561AbjELOaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 10:30:15 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46CA61437C
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 07:30:12 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50be0d835aaso17713789a12.3
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 07:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1683901810; x=1686493810;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T0OGsKjyATKDb9jYmWbTNqZ4sLTa+V+9kzUcaHu+Bg4=;
        b=NjrV3H/c9DiHGBEjjvqb8Ko94Brk1Dtf/oCUqkm+fROH8lHlSrr1UArdUvMSuEBrTZ
         LG/tVEizSEHlJUQ6SllSMvjU3iTr8RuxOD5O+u1z9ny+O9O+qn5+rpUf8zaxad3xcWxy
         JQN0iIZdGmRwGWUqSgV4B5rNFQVCc5GNL+f0uxFlOSL46MjDUc6RjinVG3auLy59Lnse
         w+2tlm0HEpP81jVq5AOcpkkFZUZRCPRUR1AnN8yEihy7UhOoYS4+Iv+34hKuTifuEGJg
         W2HF0KkXX8wGXC+UhlM6vOA8Bqs+Tku0ObCpDvdnf8n6wG3OfKQH8PW0B1e6Ic2kqOJo
         bkxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683901810; x=1686493810;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T0OGsKjyATKDb9jYmWbTNqZ4sLTa+V+9kzUcaHu+Bg4=;
        b=UrD/QU1YkvGIg99xIBGuFnNkutDWHAhxO8lEBzGjB+Mb74IoHQ8TyZgPtuJaM0N2UZ
         FbZR0qWfM9XScMILJXJhA6ynPb8tXgLXV2Y8uTR79JhunqZHCGmPc7Us4m+Si+NkpLSw
         kgQI4jfUn+qjod4GA94cluXp2yqW+Ftsfy4BeTbxJ/xwlpc7ZiuSEjhb/VsTR9igc3kF
         VqQH+Pwu49Evq6dsGvveEl4vLS584myhf7Ghc5RumdZ3PddQXdlWVEMDOuTwrlqGyAsi
         vA+DUBV5SjRpAhXYdStXqaG4hw1KxTnMNr0tpqG1aVmq55K2SP0i9oey2fKvnoIzOdbH
         16VA==
X-Gm-Message-State: AC+VfDy5CkKKjy9Y+HnKVTLPmdzLg4KG6t5dYhjWcM4XW2j+Qvfr2Hvk
        2fVOpzY9LXi3o/UGABkIT8sNGw==
X-Google-Smtp-Source: ACHHUZ7wfROlWoHHVhBbZ9cSWpXy+k/in7usHaTGZqbXMeEoLhu2Kl4Yjqa2+xah0carSqkZXnUH/g==
X-Received: by 2002:a17:907:a41e:b0:965:e556:8f6d with SMTP id sg30-20020a170907a41e00b00965e5568f6dmr23781673ejc.63.1683901810620;
        Fri, 12 May 2023 07:30:10 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id kn3-20020a1709079b0300b0096a27dbb5b2sm3518504ejc.209.2023.05.12.07.30.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 07:30:09 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Fri, 12 May 2023 16:30:08 +0200
Message-Id: <CSKDDFPXC6FD.1TAU3XXOSGA0K@otso>
From:   "Luca Weiss" <luca.weiss@fairphone.com>
To:     "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        "Eric Dumazet" <edumazet@google.com>,
        "Jakub Kicinski" <kuba@kernel.org>,
        "Paolo Abeni" <pabeni@redhat.com>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Balakrishna Godavarthi" <bgodavar@codeaurora.org>,
        "Rocky Liao" <rjliao@codeaurora.org>,
        "Marcel Holtmann" <marcel@holtmann.org>,
        "Johan Hedberg" <johan.hedberg@gmail.com>,
        "Luiz Augusto von Dentz" <luiz.dentz@gmail.com>,
        "Andy Gross" <agross@kernel.org>,
        "Bjorn Andersson" <andersson@kernel.org>,
        "Konrad Dybcio" <konrad.dybcio@linaro.org>
Cc:     <~postmarketos/upstreaming@lists.sr.ht>,
        <phone-devel@vger.kernel.org>, <netdev@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-bluetooth@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH RFC 3/4] arm64: dts: qcom: sm6350: add uart1 node
X-Mailer: aerc 0.15.1
References: <20230421-fp4-bluetooth-v1-0-0430e3a7e0a2@fairphone.com>
 <20230421-fp4-bluetooth-v1-3-0430e3a7e0a2@fairphone.com>
 <8f312ded-8456-eced-85cc-0ae32a0c8bba@linaro.org>
In-Reply-To: <8f312ded-8456-eced-85cc-0ae32a0c8bba@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun Apr 23, 2023 at 12:51 PM CEST, Krzysztof Kozlowski wrote:
> On 21/04/2023 16:11, Luca Weiss wrote:
> > Add the node describing uart1 incl. opp table and pinctrl.
> >=20
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm6350.dtsi | 63 ++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 63 insertions(+)
>
> Please do not send DTS patches for net-next. DTS must go via Qualcomm
> SoC. Split the series and mention where is the bindings change in DTS
> patchset.

Sorry, just saw now after already sending v2.

Is this a special rule for linux-bluetooth@ / netdev@? Isn't it easier
to keep it together so the status of series can be assessed easier? I've
always submitted patches by topic, like input patches + dts patches and
it was never mentioned.

Regards
Luca

>
>
> Best regards,
> Krzysztof

