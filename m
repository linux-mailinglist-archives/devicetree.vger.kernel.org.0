Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7402B65FBE0
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 08:22:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbjAFHW0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 02:22:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjAFHWZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 02:22:25 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F9D6D534
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 23:22:24 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id u19so1721481ejm.8
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 23:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RGBJdUhLvGpLg0IkWbTVUsItZJ0ILG7BPRGCq35WdVY=;
        b=J0HARupsTl+7WBfPEKj09g3EnOeAeWlPp/GwrFGx6WllPHlbzW50SKUTpdCE+LecSZ
         bmS/PVfSndtWq/BoFFlDDbDNtaF+myeZ50NIMcfDBMGfKVOVofO8PzzsRCuZYhe3Il+o
         SAnJ0lfimi3VafXMIrQxSJ7fsV6GWrFN+Q0WR9Jiw5rdNsoDx7Y3BQ3qMkPgcc8VFaAo
         Jv3vTKeh8X341+gUitiJzrx8wDv6yQNiSRsgWZTstrHU7wKzsGBIUlZvQ1dp7yiCYgJG
         itYBpurJ6ZTKMH2WNSI5k0eQ3vXu6Q8E20bFsgz2BvlGSQyseXPP/GAld1B8vDzxC46Q
         iH2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RGBJdUhLvGpLg0IkWbTVUsItZJ0ILG7BPRGCq35WdVY=;
        b=tUZEXWw22V3sAqzQJ7/u2b2XEMov4t9Gor47leaOFKvj4MUEC4ljXSOm7t2Y9omSlk
         Uj1s+WRzXN6M7R+ywys3Fui9gUtsM+YY5NBOI1v/KOO8JT+fG1mjI6ilZkkk+/+/5Uvp
         9ZE4h0mKY7rdtPr5vYYgUOL5PcdavistJwmKD4y5M8zDB0cpe8g8/drm3xTEmZ4+l6gg
         gVs7E2Y5/gvJflRHxvsIk6bY4GZXIf6p0SrUF4ONkTMD3X7QyytrGueLM/9aXcElk2aD
         WBPCghtRMitoSckbHwHlS3yAdyfj+2r3QXVEH1ke8/KsiHian8X7QamPkli0cRXAfCJR
         OHZw==
X-Gm-Message-State: AFqh2kqW9UqyojSZiDlq2vqs9sTM8OXnlEJFrIbl0XUznJU6P0rqs+MT
        8jBOe+8hSKhDq9I5Ibwg5oUyFF/dzHmLx+f83Jo=
X-Google-Smtp-Source: AMrXdXvgscXDc2MnTQQb0kJNZPsyfzKPpxZt+EMorHgjWiJhaE9pTQRfNZPJ8/4q3VUfB7cte1dM4yc+EoiH7505QL4=
X-Received: by 2002:a17:906:eb87:b0:7c1:2760:9e67 with SMTP id
 mh7-20020a170906eb8700b007c127609e67mr3879137ejb.682.1672989742556; Thu, 05
 Jan 2023 23:22:22 -0800 (PST)
MIME-Version: 1.0
Sender: abdirahmanmahad94@gmail.com
Received: by 2002:a05:640c:3925:b0:19e:799b:cd44 with HTTP; Thu, 5 Jan 2023
 23:22:21 -0800 (PST)
From:   TOM HUDDLESTON <tomhuddleston1jr@gmail.com>
Date:   Fri, 6 Jan 2023 10:22:21 +0300
X-Google-Sender-Auth: _0hqt4ipS--FcE2ho8jgIuh1da8
Message-ID: <CANYKypwsAj2TK47u+za3aVLoO8MW=q-ik8+br9iA3RoT2rU=YA@mail.gmail.com>
Subject: Ich habe Ihnen bis zu 3 E-Mails gesendet
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=2.1 required=5.0 tests=BAYES_80,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Ich habe Ihnen 3 E-Mails bez=C3=BCglich Ihrer Spende gesendet, aber keine
Antwort. Bitte melden Sie sich mit Ihrem vollst=C3=A4ndigen Namen und Ihrer
WhatsApp-Nummer bei mir, um dieses Geld an Sie weiterzuleiten.

Ignorieren Sie diese Nachricht nicht, wenn Sie sie in Ihrem Spam oder
Posteingang finden

Gr=C3=BC=C3=9Fe
Tom Huddleston
