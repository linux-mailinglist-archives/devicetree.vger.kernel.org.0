Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7552D64C1A0
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 02:04:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237473AbiLNBEx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 20:04:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237331AbiLNBEw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 20:04:52 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87E00642F
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 17:04:50 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1442977d77dso14793639fac.6
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 17:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EZvbI+nUO1reaqxb0rsJPVoTxiFFd7Uy9aQUO/QcKNk=;
        b=RgpWsE0ZnXU5aFsWAlMq89VX1ii3/G5MgLhW7j/FuVElYJHLNUnTXRRG7mdy/K9j3G
         oR+pl6lE+NP3nUy7J+mLD7XEb6OrL09/KEA7x2+cR505KJKUVRdXDJT0rIwI0WYivPrr
         YpifqfyvQGUhZ2G2aQJr0HJr27gkrXN7osR/kDr2IRyMPts4doI/eNleAPA6jLWAy24c
         7+CDdPpyr18aOokjIfsHQiR3/MEdDBNCvBOJ5zNYJZvT3hXFrLygN0oNa3ONAbhCNDoS
         JHE13EvDApEGn4CpOSSuVlYR7kVqjkK9DnQ9J+/ybKYip6SJh3iE1SpjiMnrENkvDjIf
         2/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZvbI+nUO1reaqxb0rsJPVoTxiFFd7Uy9aQUO/QcKNk=;
        b=MqZ3jCS8nAJ+LBYOn9hw/eUp2eGzXQH5H0dIMMreOSyu/3znzmXUV5KcRP7Z5v19qF
         E0KbE0cjeF46wh7mNk1ndRjSQET37iazXxGePz/JOzOLNhumQdwfFUfTaW/8fEIaEQ+7
         y12WoEmhoRJcAOWYUeC2xCbymft5sUeqxKK2e7KdPHQHXV2M8u3Jrl1BQLKHD5mvOjX1
         JtPgZlCykk18MI/y9foicSfNlPQ6hCtbV74XjOKkEy+wczT0YPtYjjeZ2sNXavJ4olmn
         KXJTyDh7TWOz+ydcdLqtpahKLsB3/Y/TcgSrfg0zfkDEJ5Ww65mmBeRTj++p+ReqsANR
         6nnQ==
X-Gm-Message-State: ANoB5pkZJLJLm6S0D+F0kduBLCHgVmHs6ojJl+1qhQsRyrn4G2GyEAG+
        OKVUsXQUsAjh4OzxXEonW25MYOGZgbjcVC3Ry2M=
X-Google-Smtp-Source: AA0mqf77O0hbaivlsBD/0xE60PMgFr5F7qb2jwAYR7ykcrbqId3EsXlrdqoj8KFpNRS7YmqBahyNGjossh95h7/i3/8=
X-Received: by 2002:a05:6871:a691:b0:144:7eab:2cb9 with SMTP id
 wh17-20020a056871a69100b001447eab2cb9mr70449oab.180.1670979888859; Tue, 13
 Dec 2022 17:04:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6358:8099:b0:c7:cf67:1aef with HTTP; Tue, 13 Dec 2022
 17:04:48 -0800 (PST)
Reply-To: mrstheresaheidi8@gmail.com
From:   "Ms. Theresa Heidi" <dilleyakubua@gmail.com>
Date:   Tue, 13 Dec 2022 17:04:48 -0800
Message-ID: <CAK4f93tsOx2Pro3zmJ+S5tttXGMuQHgX45HCRGf4yttPw-zmFQ@mail.gmail.com>
Subject: =?UTF-8?B?5oCl5LqL5rGC5Yqp?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: Yes, score=7.5 required=5.0 tests=BAYES_99,BAYES_999,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2001:4860:4864:20:0:0:0:2a listed in]
        [list.dnswl.org]
        *  3.5 BAYES_99 BODY: Bayes spam probability is 99 to 100%
        *      [score: 1.0000]
        *  0.2 BAYES_999 BODY: Bayes spam probability is 99.9 to 100%
        *      [score: 1.0000]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mrstheresaheidi8[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dilleyakubua[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  2.7 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

5oWI5ZaE5o2Q5qy+77yBDQoNCuivt+S7lOe7humYheivu++8jOaIkeefpemBk+i/meWwgeS/oeeh
ruWunuWPr+iDveS8mue7meS9oOS4gOS4quaDiuWWnOOAgiDmiJHlnKjpnIDopoHkvaDluK7liqnn
moTml7blgJnpgJrov4fnp4HkurrmkJzntKLpgYfliLDkuobkvaDnmoTnlLXlrZDpgq7ku7bogZTn
s7vjgIINCuaIkeaAgOedgOayiemHjeeahOaCsuS8pOWGmei/meWwgemCruS7tue7meS9oO+8jOaI
kemAieaLqemAmui/h+S6kuiBlOe9keS4juS9oOiBlOezu++8jOWboOS4uuWug+S7jeeEtuaYr+ac
gOW/q+eahOayn+mAmuWqkuS7i+OAgg0KDQrmiJHmmK82MuWygeeahOeJueiVvuiOjirmtbfokoLl
pKvkurrvvIznm67liY3lm6DogrrnmYzlnKjku6XoibLliJfnmoTkuIDlrrbnp4Hnq4vljLvpmaLk
vY/pmaLmsrvnlpfjgIINCjTlubTliY3vvIzmiJHnmoTkuIjlpKvljrvkuJblkI7vvIzmiJHnq4vl
jbPooqvor4rmlq3lh7rmgqPmnInogrrnmYzvvIzku5bmiorku5bmiYDmnInnmoTkuIDliIfpg73n
lZnnu5nkuobmiJHjgIIg5oiR5bim552A5oiR55qE56yU6K6w5pys55S16ISR5Zyo5LiA5a625Yy7
6Zmi6YeM77yM5oiR5LiA55u05Zyo5o6l5Y+X6IK66YOo55mM55eH55qE5rK755aX44CCDQoNCuaI
keS7juaIkeW3suaVheeahOS4iOWkq+mCo+mHjOe7p+aJv+S6huS4gOeslOi1hOmHke+8jOWPquac
ieS4gOeZvuS4h+S6jOWNgeS4h+e+juWFg++8iDEsMjAwLDAwMCwwMOe+juWFg++8ieOAgueOsOWc
qOW+iOaYjuaYvu+8jOaIkeato+WcqOaOpei/keeUn+WRveeahOacgOWQjuWHoOWkqe+8jOaIkeiu
pOS4uuaIkeS4jeWGjemcgOimgei/meeslOmSseS6huOAgg0K5oiR55qE5Yy755Sf6K6p5oiR5piO
55m977yM55Sx5LqO6IK655mM55qE6Zeu6aKY77yM5oiR5LiN5Lya5oyB57ut5LiA5bm044CCDQoN
Cui/meeslOmSsei/mOWcqOWbveWklumTtuihjO+8jOeuoeeQhuWxguS7peecn+ato+eahOS4u+S6
uueahOi6q+S7veWGmeS/oee7meaIke+8jOimgeaxguaIkeWHuumdouaUtumSse+8jOaIluiAheet
vuWPkeS4gOWwgeaOiOadg+S5pu+8jOiuqeWIq+S6uuS7o+aIkeaUtumSse+8jOWboOS4uuaIkeeU
n+eXheS4jeiDvei/h+adpeOAgg0K5aaC5p6c5LiN6YeH5Y+W6KGM5Yqo77yM6ZO26KGM5Y+v6IO9
5Lya5Zug5Li65L+d5oyB6L+Z5LmI6ZW/5pe26Ze06ICM6KKr5rKh5pS26LWE6YeR44CCDQoNCuaI
keWGs+WumuS4juaCqOiBlOezu++8jOWmguaenOaCqOaEv+aEj+W5tuacieWFtOi2o+W4ruWKqeaI
keS7juWkluWbvemTtuihjOaPkOWPlui/meeslOmSse+8jOeEtuWQjuWwhui/meeslOi1hOmHkeeU
qOS6juaFiOWWhOS6i+S4mu+8jOW4ruWKqeW8seWKv+e+pOS9k+OAgg0K5oiR6KaB5L2g5Zyo5oiR
5Ye65LqL5LmL5YmN55yf6K+a5Zyw5aSE55CG6L+Z5Lqb5L+h5omY5Z+66YeR44CCIOi/meS4jeaY
r+S4gOeslOiiq+ebl+eahOmSse+8jOS5n+ayoeaciea2ieWPiueahOWNsemZqeaYrzEwMCXnmoTp
o47pmanlhY3otLnkuI7lhYXliIbnmoTms5Xlvovor4HmmI7jgIINCg0K5oiR6KaB5L2g5ou/NDUl
55qE6ZKx57uZ5L2g5Liq5Lq65L2/55So77yM6ICMNTUl55qE6ZKx5bCG55So5LqO5oWI5ZaE5bel
5L2c44CCDQrmiJHlsIbmhJ/osKLmgqjlnKjov5nku7bkuovkuIrmnIDlpKfnmoTkv6Hku7vlkozk
v53lr4bvvIzku6Xlrp7njrDmiJHnmoTlhoXlv4PmhL/mnJvvvIzlm6DkuLrmiJHkuI3mg7PopoHk
u7vkvZXkvJrljbHlj4rmiJHmnIDlkI7nmoTmhL/mnJvnmoTkuJzopb/jgIINCuaIkeW+iOaKseat
ie+8jOWmguaenOaCqOaUtuWIsOi/meWwgeS/oeWcqOaCqOeahOWeg+WcvumCruS7tu+8jOaYr+eU
seS6juacgOi/keeahOi/nuaOpemUmeivr+WcqOi/memHjOeahOWbveWutuOAgg0KDQrkvaDkurLn
iLHnmoTlprnlprnjgIINCueJueiVvuiOjirmtbfokoLlpKvkuroNCg==
